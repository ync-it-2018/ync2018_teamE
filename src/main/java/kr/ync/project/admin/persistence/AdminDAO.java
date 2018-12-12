package kr.ync.project.admin.persistence;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;

public interface AdminDAO {

	public AdminVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String admin_id, String sessionId, Date next);

	public AdminVO checkUserWithSessionKey(String value);
}
