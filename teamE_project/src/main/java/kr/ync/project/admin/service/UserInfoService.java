package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.UserInfoVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

public interface UserInfoService {

	public UserInfoVO read(String user_id) throws Exception;

	public void remove(String user_id) throws Exception;

	public List<UserInfoVO> listAll() throws Exception;

	public List<UserInfoVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<UserInfoVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
}
