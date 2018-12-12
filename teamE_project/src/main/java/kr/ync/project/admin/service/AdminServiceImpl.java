package kr.ync.project.admin.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;
import kr.ync.project.admin.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO dao;

	@Override
	public AdminVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);
	}

	@Override
	public void keepLogin(String admin_id, String sessionId, Date next) throws Exception {

		dao.keepLogin(admin_id, sessionId, next);

	}

	@Override
	public AdminVO checkLoginBefore(String value) {

		return dao.checkUserWithSessionKey(value);
	}
}
