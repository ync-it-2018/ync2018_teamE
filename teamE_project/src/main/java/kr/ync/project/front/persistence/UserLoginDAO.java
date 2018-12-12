package kr.ync.project.front.persistence;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;
import kr.ync.project.front.domain.UserLoginVO;
import kr.ync.project.front.dto.UserLoginDTO;

public interface UserLoginDAO {

	public UserLoginVO login(UserLoginDTO dto) throws Exception;

	public void keepLogin(String user_id, String sessionId, Date next);

	public UserLoginVO checkUserWithSessionKey(String value);
}
