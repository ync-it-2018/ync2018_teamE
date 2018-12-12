package kr.ync.project.admin.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;


/**
 * CommonExceptionAdvice.java
 *
 * @Author : 노현호
 * @Date   : 2018. 10. 15.
 * @Description
 * 공통 error 처리용 controller
 *
 */
@ControllerAdvice
public class Admin_CommonExceptionAdvice {

	/**
	 * @Description
	 * 
	 * @Method Name : errorModelAndView
	 * @param ex
	 * @return
	 * 
	 */
	@ExceptionHandler(Exception.class)
	private ModelAndView errorModelAndView(Exception ex) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/error_common");
		modelAndView.addObject("exception", ex);

		return modelAndView;
	}

}
