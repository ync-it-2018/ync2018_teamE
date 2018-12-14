package kr.ync.project.admin.persistence;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.dto.LoginDTO;

/**
 * AdminDAO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 로그인 Mapper 연동을 위한 DAO 인터페이스
 * 
 */
public interface AdminDAO {

	public AdminVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String admin_id, String sessionId, Date next);

	public AdminVO checkUserWithSessionKey(String value);
}
