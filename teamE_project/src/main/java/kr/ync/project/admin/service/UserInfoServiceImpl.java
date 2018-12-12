package kr.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.admin.domain.UserInfoVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.persistence.UserInfoDAO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO dao;
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public UserInfoVO read(String user_id) throws Exception {
		return dao.read(user_id);
	}
	
	// 수정, 삭제 시에도 첨부파일 정보의 변경이 일어나기에 Transaction을 묶어준다.
	@Transactional
	@Override
	public void remove(String user_id) throws Exception {
		System.out.println(user_id);
		dao.delete(user_id);
	}

	@Override
	public List<UserInfoVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<UserInfoVO> listCriteria(Criteria cri) throws Exception {

		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

	@Override
	public List<UserInfoVO> listSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return dao.listSearchCount(cri);
	}
}
