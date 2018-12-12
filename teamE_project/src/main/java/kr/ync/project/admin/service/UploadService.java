package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.UploadVO;


public interface UploadService {
	
	public UploadVO event_img(int event_num) throws Exception;
	
	public void upload(int event_num, String url) throws Exception;

	public List<UploadVO> list() throws Exception;
}
