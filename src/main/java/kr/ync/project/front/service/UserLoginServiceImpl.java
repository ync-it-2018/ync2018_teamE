package kr.ync.project.front.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.front.domain.UserLoginVO;
import kr.ync.project.front.dto.UserLoginDTO;
import kr.ync.project.front.persistence.UserLoginDAO;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	@Autowired
	private UserLoginDAO dao;

	@Override
	public UserLoginVO login(UserLoginDTO dto) throws Exception {

		return dao.login(dto);
	}

	@Override
	public void keepLogin(String user_id, String sessionId, Date next) throws Exception {

		dao.keepLogin(user_id, sessionId, next);

	}

	@Override
	public UserLoginVO checkLoginBefore(String value) {

		return dao.checkUserWithSessionKey(value);
	}
}
