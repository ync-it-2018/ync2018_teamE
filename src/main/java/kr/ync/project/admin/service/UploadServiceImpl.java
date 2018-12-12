package kr.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.admin.domain.UploadVO;
import kr.ync.project.admin.persistence.UploadDAO;



@Service
public class UploadServiceImpl implements UploadService {

	@Autowired
	private UploadDAO dao;
	
	@Override
	public UploadVO event_img(int event_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.event_img(event_num);
	}

	@Override
	public void upload(int event_num, String url) throws Exception {
		// TODO Auto-generated method stub
		dao.update(event_num, url);
	}

	@Override
	public List<UploadVO> list() throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}
	

}
