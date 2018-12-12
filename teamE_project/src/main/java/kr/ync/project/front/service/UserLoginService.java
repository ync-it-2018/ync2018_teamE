package kr.ync.project.front.service;

import java.util.Date;

import kr.ync.project.front.domain.UserLoginVO;
import kr.ync.project.front.dto.UserLoginDTO;

public interface UserLoginService {

	public UserLoginVO login(UserLoginDTO dto) throws Exception;

	public void keepLogin(String user_id, String sessionId, Date next) throws Exception;

	public UserLoginVO checkLoginBefore(String value);
}
