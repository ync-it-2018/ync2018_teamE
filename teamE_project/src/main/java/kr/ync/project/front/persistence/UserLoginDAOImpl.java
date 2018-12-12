package kr.ync.project.front.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;
import kr.ync.project.front.domain.UserLoginVO;
import kr.ync.project.front.dto.UserLoginDTO;

@Repository
public class UserLoginDAOImpl implements UserLoginDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.UserLoginMapper";

	@Override
	public UserLoginVO login(UserLoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void keepLogin(String user_id, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("user_id", user_id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public UserLoginVO checkUserWithSessionKey(String value) {

		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}
}
