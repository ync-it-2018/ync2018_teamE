package kr.ync.project.admin.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * LoginDTO.java
 *
 * @Author : 노현호
 * @Date   : 2018. 12. 14.
 * @Description
 * 로그인 객체 정보를 받는 dto클래스
 *
 */
@Getter
@Setter
@ToString
public class LoginDTO {
	
	private String admin_id;
	private String admin_password;
	private boolean useCookie;

}
