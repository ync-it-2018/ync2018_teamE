package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ync.project.admin.domain.MessageVO;
import kr.ync.project.admin.service.MessageService;



@RestController
@RequestMapping("/messages")
public class MessageController {

	@Inject
	private MessageService service;

	@PostMapping(value = "/")
	public ResponseEntity<String> addMessage(@RequestBody MessageVO vo) {

		ResponseEntity<String> entity = null;
		try {
			service.addMessage(vo);
			entity = new ResponseEntity<>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
