package kr.ync.project.front.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.front.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AssemblyController {
	
	@Autowired
	ProductService service;
	
	private static final Logger logger = LoggerFactory.getLogger(AssemblyController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	


}
