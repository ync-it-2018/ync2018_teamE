package kr.ync.project.admin.service;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;

/**
 * AdminService.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 로그인 서비스 인터페이스
 * 
 */
public interface AdminService {

	public AdminVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String admin_id, String sessionId, Date next) throws Exception;

	public AdminVO checkLoginBefore(String value);
}
