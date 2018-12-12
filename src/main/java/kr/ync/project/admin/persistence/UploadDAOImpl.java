package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.UploadVO;



@Repository
public class UploadDAOImpl implements UploadDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.UploadMapper";

	
	@Override
	public UploadVO event_img(int event_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".event_img", event_num);
	}
	
	@Override
	public void update(int event_num, String event_url) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>(); // MAP을 이용해 담기
        map.put("event_num", event_num);
        map.put("event_url", event_url);



		session.update(namespace + ".event_upload", map);
	}

	@Override
	public List<UploadVO> list() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".list");
	}
}
