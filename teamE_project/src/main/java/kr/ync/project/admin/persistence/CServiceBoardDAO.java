package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.CServiceVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

/**
 * CServiceBoardDAO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 1:1문의 Mapper 연동을 위한 DAO 인터페이스
 * 
 */
public interface CServiceBoardDAO {

	public void create(CServiceVO vo) throws Exception;

	public CServiceVO read(Integer ask_num) throws Exception;

	public void update(CServiceVO vo) throws Exception;

	public void delete(Integer ask_num) throws Exception;
	
	
	public List<CServiceVO> listAll() throws Exception;

	public List<CServiceVO> listPage(int page) throws Exception;
  
	public List<CServiceVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<CServiceVO> listSearch(SearchCriteria cri)throws Exception;
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
	// 첨부파일 관련 method
	public void addAttach(String fullName) throws Exception;

	public List<String> getAttach(Integer ask_num) throws Exception;

	public void deleteAttach(Integer ask_num) throws Exception;

	public void replaceAttach(String fullName, Integer ask_num) throws Exception;

}
