package kr.ync.project.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.domain.PageMaker;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.service.NoticeBoardService;

import lombok.extern.slf4j.Slf4j;

/**
 * NoticeBoardController.java
 *
 * @Author : 노현호
 * @Date   : 2018. 12. 14.
 * @Description
 * 공지사항 게시판을 위한 Controller
 *
 */
@Controller
@RequestMapping("/admin/noticeBoard/*")
@Slf4j
public class NoticeBoardController {

	@Autowired
	private NoticeBoardService service;
	
	@GetMapping(value = "/noticeList")
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

	@GetMapping(value = "/noticeReadPage")
	public void read(int notice_num, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		model.addAttribute(service.read(notice_num));
	}

	@PostMapping(value = "/removePage")
	public String remove(int notice_num, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.remove(notice_num);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/noticeBoard/noticeList";
	}

	@GetMapping(value = "/modifyPage")
	public void modifyPagingGET(int notice_num, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		// 수정화면에서도 pageMaker.makeSearch의 UriComponentsBuilder를 이용하기위해.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		model.addAttribute("pageMaker", pageMaker);
		// 기존 코드에 pageMaker 객체를 추가로 model에 넣어준다.
		
		model.addAttribute(service.read(notice_num));
	}

	@PostMapping(value = "/modifyPage")
	public String modifyPagingPOST(NoticeVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		log.info(cri.toString());
		service.modify(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		log.info(rttr.toString());

		return "redirect:/admin/noticeBoard/noticeList";
	}
	
	@GetMapping(value = "/register")
	public void registGET() throws Exception {

		log.info("regist get ...........");
	}

	@PostMapping(value = "/register")
	public String registPOST(NoticeVO board, RedirectAttributes rttr) throws Exception {

		log.info("regist post ...........");
		log.info(board.toString());

		service.regist(board);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/noticeBoard/noticeList";
	}

	
}
