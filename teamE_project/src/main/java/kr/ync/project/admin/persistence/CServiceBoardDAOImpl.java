package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.CServiceVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

@Repository
public class CServiceBoardDAOImpl implements CServiceBoardDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.CServiceBoardMapper";

	@Override
	public void create(CServiceVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public CServiceVO read(Integer ask_num) throws Exception {
		return session.selectOne(namespace + ".read", ask_num);
	}

	@Override
	public void update(CServiceVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer ask_num) throws Exception {
		session.delete(namespace + ".delete", ask_num);
	}
	
	@Override
	public List<CServiceVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<CServiceVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<CServiceVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<CServiceVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}
	
	
	@Override
	public void addAttach(String fullName) throws Exception {

		session.insert(namespace + ".addAttach", fullName);

	}

	@Override
	public List<String> getAttach(Integer ask_num) throws Exception {

		return session.selectList(namespace + ".getAttach", ask_num);
	}

	@Override
	public void deleteAttach(Integer ask_num) throws Exception {

		session.delete(namespace + ".deleteAttach", ask_num);

	}

	@Override
	public void replaceAttach(String fullName, Integer ask_num) throws Exception {

		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("ask_num", ask_num);
		paramMap.put("fullName", fullName);

		session.insert(namespace + ".replaceAttach", paramMap);

	}
}
