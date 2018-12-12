package kr.ync.project.admin.controller;

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
import org.springframework.web.util.WebUtils;

import kr.ync.project.admin.service.AdminService;
import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/user/*")
@Slf4j
public class AdminInfoController {

	@Autowired
	private AdminService service;

	@GetMapping(value = "/login")
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

	}
	
	@GetMapping(value = "/loginError")
	public String loginError(@ModelAttribute("dto") LoginDTO dto) {
		return "admin/user/loginError";
	}	
	
	@PostMapping(value = "/loginPost")
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {

		AdminVO vo = service.login(dto);

		if (vo == null) {
			return;
		}

		model.addAttribute("AdminVO", vo);

		if (dto.isUseCookie()) {

			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getAdmin_id(), session.getId(), sessionLimit);
		}

	}

	@GetMapping(value = "/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		log.info("logout.................................1");

		Object obj = session.getAttribute("login");

		if (obj != null) {
			AdminVO vo = (AdminVO) obj;
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
				service.keepLogin(vo.getAdmin_id(), session.getId(), new Date());
				log.info("logout success................");
			}
		}
		response.sendRedirect("/admin/user/login");
	}
}
