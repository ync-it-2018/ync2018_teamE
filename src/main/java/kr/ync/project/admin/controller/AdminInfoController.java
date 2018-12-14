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

/**
 * AdminInfoController.java
 * @Author : 노현호
 * @Date   : 2018. 12. 14.
 * @Description
 * 어드민 로그인 Controller
 *
 */
@Controller
@RequestMapping("/admin/user/*")
@Slf4j
public class AdminInfoController {

	@Autowired
	private AdminService service;

	/**
	 * @Description
	 * 어드민 로그인화면으로 이동하기 위한 경로 매핑
	 * @Method Name : loginGET
	 * @param dto	로그인 정보 객체 
	 */
	@GetMapping(value = "/login")
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

	}
	
	/**
	 * @Description
	 * 어드민 로그인시 아이디 또는 비밀번호가 틀렸을 경우 에러페이지로 이동
	 * @Method Name : loginError
	 * @param dto	로그인 정보 객체
	 * @return
	 * 어드민 로그인에러 페이지로 이동
	 */
	@GetMapping(value = "/loginError")
	public String loginError(@ModelAttribute("dto") LoginDTO dto) {
		return "admin/user/loginError";
	}	
	
	/**
	 * @Description
	 * 어드민 로그인 성공시 넘어가게 하기위한 메소드
	 * @Method Name : loginPOST  
	 * @param dto	로그인 정보 객체
	 * @param session	현재 세션
	 * @param model		모델 객체
	 * @throws Exception 예외 처리
	 */
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

	/**
	 * @Description
	 * 로그아웃을 위한 메소드
	 * @Method Name : logout
	 * @param request	요청 파라미터
	 * @param response	반응 파라미터
	 * @param session	현재 세션
	 * @throws Exception	예외처리
	 */
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
