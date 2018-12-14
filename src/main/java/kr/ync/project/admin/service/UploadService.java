package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.UploadVO;


/**
 * UploadService.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * Upload 서비스 인터페이스
 * 
 */
public interface UploadService {
	
	public UploadVO event_img(int event_num) throws Exception;
	
	public void upload(int event_num, String url) throws Exception;

	public List<UploadVO> list() throws Exception;
}
