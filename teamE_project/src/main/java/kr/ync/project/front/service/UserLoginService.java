package kr.ync.project.front.service;

import java.util.Date;

import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.front.domain.UserLoginVO;
import kr.ync.project.front.dto.UserLoginDTO;

public interface UserLoginService {

	public UserLoginVO login(UserLoginDTO dto) throws Exception;

	public void keepLogin(String user_id, String sessionId, Date next) throws Exception;

	public UserLoginVO checkLoginBefore(String value);
	
	public void register(UserLoginVO rg) throws Exception;
	
	public void modify(UserLoginVO rg) throws Exception;
	
	public UserLoginVO read(String user_id) throws Exception;
}
