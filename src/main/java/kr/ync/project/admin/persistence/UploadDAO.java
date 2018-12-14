package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.UploadVO;



/**
 * UploadDAO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * Upload Mapper 연동을 위한 DAO 인터페이스
 * 
 */
public interface UploadDAO {

	
	public UploadVO event_img(int event_num) throws Exception;

	public void update(int event_num, String event_url) throws Exception;
	
	public List<UploadVO> list() throws Exception;

}
