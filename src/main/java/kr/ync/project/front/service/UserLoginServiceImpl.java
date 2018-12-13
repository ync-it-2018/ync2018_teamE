package kr.ync.project.front.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

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

	@Transactional
	@Override
	public void register(UserLoginVO rg) throws Exception {
		dao.create(rg);
		
	}

	@Transactional
	@Override
	public void modify(UserLoginVO rg) throws Exception {
		dao.update(rg);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public UserLoginVO read(String user_id) throws Exception {
		return dao.read(user_id);
	}
}
