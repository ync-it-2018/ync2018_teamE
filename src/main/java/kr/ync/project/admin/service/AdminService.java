package kr.ync.project.admin.service;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;

public interface AdminService {

	public AdminVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String admin_id, String sessionId, Date next) throws Exception;

	public AdminVO checkLoginBefore(String value);
}
