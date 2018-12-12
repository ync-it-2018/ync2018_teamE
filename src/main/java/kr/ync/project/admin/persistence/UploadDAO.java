package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.UploadVO;



public interface UploadDAO {

	
	public UploadVO event_img(int event_num) throws Exception;

	public void update(int event_num, String event_url) throws Exception;
	
	public List<UploadVO> list() throws Exception;

}
