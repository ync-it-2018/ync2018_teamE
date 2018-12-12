package kr.ync.project.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.admin.domain.QnAVO;
import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.domain.PageMaker;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.service.DQuestionBoardService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/DQuestionBoard/*")
@Slf4j
public class DQuestionBoardController {

	@Autowired
	private DQuestionBoardService service;
	
	@GetMapping(value = "/list")
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		log.info(cri.toString()); // SearchCriteria 객체의 값

		//model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

	@GetMapping(value = "/readPage")
	public void read(int qna_num, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		model.addAttribute(service.read(qna_num));
	}

	@PostMapping(value = "/removePage")
	public String remove(int qna_num, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.remove(qna_num);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/DQuestionBoard/list";
	}

	@GetMapping(value = "/modifyPage")
	public void modifyPagingGET(int qna_num, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		// 수정화면에서도 pageMaker.makeSearch의 UriComponentsBuilder를 이용하기위해.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		model.addAttribute("pageMaker", pageMaker);
		// 기존 코드에 pageMaker 객체를 추가로 model에 넣어준다.
		
		model.addAttribute(service.read(qna_num));
	}

	@PostMapping(value = "/modifyPage")
	public String modifyPagingPOST(QnAVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		log.info(cri.toString());
		service.modify(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		log.info(rttr.toString());

		return "redirect:/admin/DQuestionBoard/list";
	}
	
	@GetMapping(value = "/register")
	public void registGET() throws Exception {

		log.info("regist get ...........");
	}

	@PostMapping(value = "/register")
	public String registPOST(QnAVO board, RedirectAttributes rttr) throws Exception {

		log.info("regist post ...........");
		log.info(board.toString());

		service.regist(board);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/DQuestionBoard/list";
	}

	
}
