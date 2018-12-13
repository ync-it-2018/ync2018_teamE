package kr.ync.project.front.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import kr.ync.project.admin.service.AdminService;
import kr.ync.project.front.domain.UserLoginVO;
import kr.ync.project.front.dto.UserLoginDTO;
import kr.ync.project.front.service.UserLoginService;
import kr.ync.project.admin.controller.AdminInfoController;
import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.domain.PageMaker;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.dto.LoginDTO;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/front/user/*")
@Slf4j
public class UserLoginController {

	@Autowired
	private UserLoginService service;

	@GetMapping(value = "/login")
	public void loginGET(@ModelAttribute("dto") UserLoginDTO dto) {

	}
	
	@GetMapping(value = "/loginError")
	public String loginError(@ModelAttribute("dto") UserLoginDTO dto) {
		return "front/user/loginError";
	}	
	
	@PostMapping(value = "/loginPost")
	public void loginPOST(UserLoginDTO dto, HttpSession session, Model model) throws Exception {

		UserLoginVO vo = service.login(dto);

		if (vo == null) {
			return;
		}

		model.addAttribute("UserLoginVO", vo);

		if (dto.isUseCookie()) {

			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getUser_id(), session.getId(), sessionLimit);
		}

	}

	@GetMapping(value = "/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		log.info("logout.................................1");

		Object obj = session.getAttribute("login");

		if (obj != null) {
			UserLoginVO vo = (UserLoginVO) obj;
			log.info("logout.................................2");
			session.removeAttribute("login");
			session.invalidate();

			log.info("logout.................................3");
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				log.info("logout.................................4");
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUser_id(), session.getId(), new Date());
				log.info("logout success................");
			}
		}
		response.sendRedirect("/");
	}
	
	@GetMapping(value = "/register")
	public void registerGET() throws Exception {

		log.info("register get ...........");
	}

	@PostMapping(value = "/register")
	public String registPOST(UserLoginVO rg, RedirectAttributes rttr) throws Exception {

		log.info("register post ...........");
		log.info(rg.toString());

		service.register(rg);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/";
	}
	
	@GetMapping(value = "/modifyPage")
	public void modifyPagingGET(String user_id, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		// 수정화면에서도 pageMaker.makeSearch의 UriComponentsBuilder를 이용하기위해.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		model.addAttribute("pageMaker", pageMaker);
		// 기존 코드에 pageMaker 객체를 추가로 model에 넣어준다.
		
		model.addAttribute(service.read(user_id));
	}

	@PostMapping(value = "/modifyPage")
	public String modifyPagingPOST(UserLoginVO rg, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		log.info(cri.toString());
		service.modify(rg);

		rttr.addFlashAttribute("msg", "SUCCESS");

		log.info(rttr.toString());

		return "redirect:/";
	}
}
