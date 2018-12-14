package kr.ync.project.admin.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.ync.project.admin.service.UploadService;
import kr.ync.project.admin.util.UploadFileUtils;
import lombok.extern.slf4j.Slf4j;
/**
 * UploadController.java
 *
 * @Author : 노현호
 * @Date   : 2018. 12. 14.
 * @Description
 * 이벤트 배너 업로드를 위한  Controller
 *
 */
@RequestMapping("/admin/Event/*")
@Controller
@Slf4j
public class UploadController {
	
	@Autowired
	private UploadService service;

	// 아이디 > 자료형으로 찾아서 주입. 생성자에 사용이 불가하다.
	// 필드변수, method에 사용가능
	// 빈 컨테이너에서 uploadPath 이름의 객체를 파라미터 혹은 value로 넣어준다.
	// 여기선 value로 넣어준다.
	// uploadPath = G:\\ync\\2018\\spring\\upload 등등으로 개별PC에 설정도니 값
	// servelt-context.xml에 정의된 값
	@Resource(name = "uploadPath")
	private String uploadPath;

	@GetMapping(value = "/uploadForm")
	public void uploadForm() {
		
		
	}
	
	// ajax가 아닌 기존 방식으로 다중 업로드를 할때 필요한 method
	@RequestMapping(value="/uploadMultiForm" , method = {RequestMethod.GET, RequestMethod.POST})
	   public String uploadMultiForm(MultipartHttpServletRequest request, @RequestParam("files") MultipartFile[] files, Model model) throws Exception {

	      List<String> list = new ArrayList<String>();

	      for (MultipartFile multipartFile : files) {
	         log.info("originalName: " + multipartFile.getOriginalFilename());
	         log.info("size: " + multipartFile.getSize());
	         log.info("contentType: " + multipartFile.getContentType());

	         list.add(UploadFileUtils.uploadFile(uploadPath, multipartFile.getOriginalFilename(),
	               multipartFile.getBytes()));
	      }
	      model.addAttribute("list", list);
	      return "uploadMultiForm";
	   }

	@PostMapping(value = "/uploadForm")
	public void uploadForm(int event_num, MultipartFile file, Model model) throws Exception {

		log.info("originalName: " + file.getOriginalFilename());
		log.info("size: " + file.getSize() + "is empty? : " + file.isEmpty());
		log.info("contentType: " + file.getContentType());
		
		// uploadPath에 바로 저장시키기
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
		// String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		
		// 실제 저장된 file명을 view에 전달한다.
		//model.addAttribute("savedName", savedName);
		System.out.println("/resources/front/images/" + savedName);
		service.upload(event_num, "/resources/front/images/" + savedName);

	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {

		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);

		return savedName;
	}
	
	@GetMapping(value = "/uploadAjax")
	public void uploadAjax() {
	}
	
	// @ResponseBody는 return type이 HTTP 응답 메시지로 전송시킬때 사용
	// ReplyController에선 class를 @RestController로 선언해서 안썼지만
	// UploadController는 일반 @Controller로 선언하여 ResponseEntity type으로 return하는 method에서
	// 사용해주었다.
	@ResponseBody
	@PostMapping(value = "/uploadAjax", produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {

		log.info("originalName: " + file.getOriginalFilename());
		
		return new ResponseEntity<>(file.getOriginalFilename(), HttpStatus.CREATED);
		
	}
	
	@RequestMapping(value = "/eventPage", method = RequestMethod.GET)
	public String event(Model model) throws Exception {
				
		model.addAttribute("list", service.list());
		
		return "admin/Event/eventPage";
	}
	
	
	
}
