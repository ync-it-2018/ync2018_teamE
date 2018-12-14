package kr.ync.project.admin.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.admin.dto.LoginDTO;
import kr.ync.project.admin.service.NoticeBoardService;
import lombok.extern.slf4j.Slf4j;


/**
 * adminHomeController.java
 *
 * @Author : 노현호
 * @Date   : 2018. 12. 14.
 * @Description
 * 어드민 메인페이지 및 로그인 연결 Controller
 * 
 *
 */
@Controller
@Slf4j
public class adminHomeController {
	@Autowired
	private NoticeBoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(adminHomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/**
	 * @Description
	 * 어드민 메인 화면 Controller
	 * @Method Name : home
	 * @param locale 현재 위치 경로
	 * @param model	 받아올 모델 객체
	 * @return
	 * 어드민 메인페이지 경로로 이동
	 */
	@RequestMapping(value = "admin/user/index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		// 가나다
		logger.info("컴퓨터 조립 사이트 test중", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "admin/user/index";
	}
	
	/**
	 * @Description
	 * 어드민 페이지 접근시 로그인인터셉터를 통해 로그인 화면 또는 메인화면 으로 이동하기 위한 메소드
	 * @Method Name : adminGET
	 * @param dto	로그인 정보 객체
	 * 
	 */
	@GetMapping(value = "/admin")
	public void adminGET(@ModelAttribute("dto") LoginDTO dto) {
	
	}
	
}

	

