package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.UserInfoVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

@Repository
public class UserInfoDAOImpl implements UserInfoDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.UserInfoMapper";


	@Override
	public UserInfoVO read(String user_id) throws Exception {
		return session.selectOne(namespace + ".read", user_id);
	}

	@Override
	public void delete(String user_id) throws Exception {
		session.delete(namespace + ".delete", user_id);
	}
	
	@Override
	public List<UserInfoVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<UserInfoVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<UserInfoVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<UserInfoVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}
	
}
