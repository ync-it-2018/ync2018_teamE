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

import kr.ync.project.admin.domain.PageMaker;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.domain.UserInfoVO;
import kr.ync.project.admin.service.UserInfoService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/UserInfo/*")
@Slf4j
public class UserInfoController {

	@Autowired
	private UserInfoService service;
	
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
	public void read(String user_id, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		model.addAttribute(service.read(user_id));
	}

	@PostMapping(value = "/removePage")
	public String remove(String user_id, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.remove(user_id);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/admin/UserInfo/list";
	}
}
