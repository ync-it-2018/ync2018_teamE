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
public class frontController {
	
	@Autowired
	ProductService service;
	
	private static final Logger logger = LoggerFactory.getLogger(frontController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		// 가나다
		logger.info("컴퓨터 조립 사이트", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "front/index";
	}
	
	
	@RequestMapping(value = "/team", method = RequestMethod.GET)
	public String team() {
		
		return "front/team";
	}
	
	@RequestMapping(value = "/assemblyPC", method = RequestMethod.GET)
	public String assemblyPC(@RequestParam("CATEGORY1_NUM") int CATEGORY1_NUM, 
			@RequestParam("CATEGORY2_NUM") int CATEGORY2_NUM ,
			@RequestParam(value="CATEGORY3_NUM", required=false) String CATEGORY3_NUM,
			@RequestParam(value="TAG_1", required=false) String TAG_1,
			@RequestParam(value="TAG_2", required=false) String TAG_2,
			@RequestParam(value="TAG_3", required=false) String TAG_3,
			@RequestParam(value="TAG_4", required=false) String TAG_4,
			@RequestParam(value="TAG_5", required=false) String TAG_5,
			@RequestParam(value="TAG_6", required=false) String TAG_6,
			Model model) throws Exception {
				
		model.addAttribute("serverTime",service.AssemblyPC(CATEGORY1_NUM,CATEGORY2_NUM,CATEGORY3_NUM,TAG_1,TAG_2,TAG_3,TAG_4,TAG_5,TAG_6));
		
		
		String result = null;
		if (CATEGORY2_NUM == 1 ) {
			result = "front/assemblyPC";
		} else if (CATEGORY2_NUM == 2 ) {
			result = "front/assemblyPC_mainboard";	
		} else if (CATEGORY2_NUM == 3 ) {
			result = "front/assemblyPC_memory";	
		} else if (CATEGORY2_NUM == 4 ) {
			result = "front/assemblyPC_graphics";	
		} else if (CATEGORY2_NUM == 5 ) {
			result = "front/assemblyPC_ssd";	
		} else if (CATEGORY2_NUM == 6 ) {
			result = "front/assemblyPC_harddisk";	
		} else if (CATEGORY2_NUM == 7 ) {
			result = "front/assemblyPC_odd";	
		} else if (CATEGORY2_NUM == 8 ) {
			result = "front/assemblyPC_power";	
		} else if (CATEGORY2_NUM == 9 ) {
			result = "front/assemblyPC_case";	
		} else if (CATEGORY2_NUM == 10 ) {
			result = "front/assemblyPC_keyboard";	
		} else if (CATEGORY2_NUM == 11 ) {
			result = "front/assemblyPC_mouse";	
		} else if (CATEGORY2_NUM == 12 ) {
			result = "front/assemblyPC_monitor";	
		} else if (CATEGORY2_NUM == 13 ) {
			result = "front/assemblyPC_coolingtuner";	
		} else if (CATEGORY2_NUM == 14 ) {
			result = "front/assemblyPC_sw";	
		} 
		
		return result;
	}
	

	
	
	

	/*@RequestMapping(value = "/assemblyPC", method = RequestMethod.POST)
	public String assemblyPC(@RequestParam("CATEGORY1_NUM") int CATEGORY1_NUM , Model model) throws Exception {
		
		
		model.addAttribute("serverTime",service.AssemblyPC(CATEGORY1_NUM));
				
		return "front/장바ㄱ니";
	}*/
	

	@RequestMapping(value = "/standardPC", method = RequestMethod.GET)
	public String standardPC(@RequestParam("CATEGORY1_NUM") int CATEGORY1_NUM , @RequestParam("CATEGORY2_NUM") int CATEGORY2_NUM,
			@RequestParam(value="CATEGORY3_NUM", required=false) String CATEGORY3_NUM,
			@RequestParam(value="TAG_1", required=false) String TAG_1,
			@RequestParam(value="TAG_2", required=false) String TAG_2,
			@RequestParam(value="TAG_3", required=false) String TAG_3, Model model) throws Exception {
		
		
		model.addAttribute("serverTime",service.StandardPC(CATEGORY1_NUM,CATEGORY2_NUM,CATEGORY3_NUM,TAG_1,TAG_2,TAG_3));
		
		String result = null;
		if (CATEGORY2_NUM == 15 ) {
			result = "front/standardPC";
		} else if (CATEGORY2_NUM == 16 ) {
			result = "front/standardPC_office";	
		} else if (CATEGORY2_NUM == 17 ) {
			result = "front/standardPC_highend";	
		}
		
		
		System.out.println(result);
		return result;
	}
	
	@RequestMapping(value = "/laptopPC", method = RequestMethod.GET)
	public String laptopPC(@RequestParam("CATEGORY1_NUM") int CATEGORY1_NUM , @RequestParam("CATEGORY2_NUM") int CATEGORY2_NUM,
			@RequestParam(value="CATEGORY3_NUM", required=false) String CATEGORY3_NUM,
			@RequestParam(value="TAG_1", required=false) String TAG_1,
			@RequestParam(value="TAG_2", required=false) String TAG_2,
			@RequestParam(value="TAG_3", required=false) String TAG_3, Model model) throws Exception {
		
		
		model.addAttribute("serverTime",service.LaptopPC(CATEGORY1_NUM,CATEGORY2_NUM,CATEGORY3_NUM,TAG_1,TAG_2,TAG_3));
		
		String result = null;
		if (CATEGORY2_NUM == 18 ) {
			result = "front/laptopPC";
		} else if (CATEGORY2_NUM == 19 ) {
			result = "front/laptopPC_office";	
		} else if (CATEGORY2_NUM == 20 ) {
			result = "front/laptopPC_highend";	
		}
		
		
		System.out.println(result);
		return result;
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("PRODUCT_NUM") int PRODUCT_NUM , Model model) throws Exception {
		
		model.addAttribute("serverTime",service.Detail(PRODUCT_NUM));
		model.addAttribute("serverTime1",service.Review(PRODUCT_NUM));
		System.out.println("servie.Detail"+service.Detail(PRODUCT_NUM));
				
		return "front/detail";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(@RequestParam("keyword") String keyword, @RequestParam(value="sort", required=false) int sort, Model model) throws Exception {
		
		model.addAttribute("serverTime",service.Search(keyword, sort));
				
		return "front/search";
	}
	
	
	/*@RequestMapping(value = "/standardPC", method = RequestMethod.GET)
	public String standardPC() {
		
		return "front/standardPC";
	}*/
	
	@RequestMapping(value = "/standardPC2", method = RequestMethod.GET)
	public String standardPC2() {
		
		return "front/standardPC2";
	}
	
	@RequestMapping(value = "/laptopPC2", method = RequestMethod.GET)
	public String laptopPC2() {
		
		return "front/laptopPC2";
	}
	
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq() {
		
		return "front/faq";
	}

	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event() {
		
		return "front/event";
	}
	
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public String service() {
		
		return "front/service";
	}
	 

	@RequestMapping(value = "/MSI", method = RequestMethod.GET)
	public String MSI(@RequestParam("event_num") int event_num, Model model) throws Exception {
		System.out.println(3);
		model.addAttribute("event_img", service.event_img(event_num));
		return "front/MSI";
	}
}
