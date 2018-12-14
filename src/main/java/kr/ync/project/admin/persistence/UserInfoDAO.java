package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.UserInfoVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

/**
 * UserInfoDAO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 회원관리 Mapper 연동을 위한 DAO 인터페이스
 */
public interface UserInfoDAO {

	public UserInfoVO read(String user_id) throws Exception;

	public void delete(String user_id) throws Exception;
	
	public List<UserInfoVO> listAll() throws Exception;

	public List<UserInfoVO> listPage(int page) throws Exception;
  
	public List<UserInfoVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<UserInfoVO> listSearch(SearchCriteria cri)throws Exception;
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;
}
