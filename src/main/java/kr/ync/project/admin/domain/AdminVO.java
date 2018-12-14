package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * AdminVO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 어드민 로그인 VO 객체
 * 
 */
@Getter
@Setter
@ToString
public class AdminVO {
	private String admin_id;
	private String admin_password;
	private String admin_name;
}
