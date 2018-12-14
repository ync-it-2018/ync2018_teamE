package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.QnAVO;
import kr.ync.project.admin.domain.SearchCriteria;

/**
 * PQuestionBoardDAOImpl.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 상품문의 Mapper 연동을 위한 DAO 구현 소스
 * 
 */
@Repository
public class PQuestionBoardDAOImpl implements PQuestionBoardDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.PQuestionBoardMapper";

	@Override
	public void create(QnAVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public QnAVO read(Integer qna_num) throws Exception {
		return session.selectOne(namespace + ".read", qna_num);
	}

	@Override
	public void update(QnAVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer qna_num) throws Exception {
		session.delete(namespace + ".delete", qna_num);
	}
	
	@Override
	public List<QnAVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<QnAVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<QnAVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<QnAVO> listSearch(SearchCriteria cri) throws Exception {

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
	public List<String> getAttach(Integer qna_num) throws Exception {

		return session.selectList(namespace + ".getAttach", qna_num);
	}

	@Override
	public void deleteAttach(Integer qna_num) throws Exception {

		session.delete(namespace + ".deleteAttach", qna_num);

	}

	@Override
	public void replaceAttach(String fullName, Integer qna_num) throws Exception {

		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("qna_num", qna_num);
		paramMap.put("fullName", fullName);

		session.insert(namespace + ".replaceAttach", paramMap);

	}
}
