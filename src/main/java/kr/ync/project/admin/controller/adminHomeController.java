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
 * Handles requests for the application home page.
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
	
	@GetMapping(value = "/admin")
	public void adminGET(@ModelAttribute("dto") LoginDTO dto) {
	}
	
}
	/*@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		
		return "front/about";
	}
	*/

	

