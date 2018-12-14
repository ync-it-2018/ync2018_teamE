package kr.ync.project.admin.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;

/**
 * AdminDAOImpl.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 로그인 Mapper 연동을 위한 DAO 구현소스
 * 
 */
@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.AdminMapper";

	@Override
	public AdminVO login(LoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void keepLogin(String admin_id, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("admin_id", admin_id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public AdminVO checkUserWithSessionKey(String value) {

		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}
}
