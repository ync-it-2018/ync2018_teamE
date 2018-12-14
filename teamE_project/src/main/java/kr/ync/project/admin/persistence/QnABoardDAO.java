package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.QnAVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

/**
 * QnABoardDAO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * QnA Mapper 연동을 위한 DAO 인터페이스
 * 
 */
public interface QnABoardDAO {

	public void create(QnAVO vo) throws Exception;

	public QnAVO read(Integer qna_num) throws Exception;

	public void update(QnAVO vo) throws Exception;

	public void delete(Integer qna_num) throws Exception;
	
	
	public List<QnAVO> listAll() throws Exception;

	public List<QnAVO> listPage(int page) throws Exception;
  
	public List<QnAVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<QnAVO> listSearch(SearchCriteria cri)throws Exception;
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
	// 첨부파일 관련 method
	public void addAttach(String fullName) throws Exception;

	public List<String> getAttach(Integer qna_num) throws Exception;

	public void deleteAttach(Integer qna_num) throws Exception;

	public void replaceAttach(String fullName, Integer qna_num) throws Exception;

}
