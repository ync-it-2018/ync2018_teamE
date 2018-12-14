package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

/**
 * NoticeBoardDAO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 공지사항 게시판 Mapper 연동을 위한 DAO 인터페이스
 * 
 */
public interface NoticeBoardDAO {

	public void create(NoticeVO vo) throws Exception;

	public NoticeVO read(Integer notice_num) throws Exception;

	public void update(NoticeVO vo) throws Exception;

	public void delete(Integer notice_num) throws Exception;
	
	
	public List<NoticeVO> listAll() throws Exception;

	public List<NoticeVO> listPage(int page) throws Exception;
  
	public List<NoticeVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
   
	//use for dynamic SQL
	// 검색이 적용된 Query 결과 List
	public List<NoticeVO> listSearch(SearchCriteria cri)throws Exception;
	
	// 검색이 적용된 Query 결과 Count
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
	// 첨부파일 관련 method
	public void addAttach(String fullName) throws Exception;

	public List<String> getAttach(Integer notice_num) throws Exception;

	public void deleteAttach(Integer notice_num) throws Exception;

	public void replaceAttach(String fullName, Integer notice_num) throws Exception;

}
