package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

/**
 * NoticeBoardService.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 공지사항 게시판 서비스 인터페이스
 * 
 */
public interface NoticeBoardService {

	public void regist(NoticeVO board) throws Exception;

	public NoticeVO read(Integer notice_num) throws Exception;

	public void modify(NoticeVO board) throws Exception;

	public void remove(Integer notice_num) throws Exception;

	public List<NoticeVO> listAll() throws Exception;

	public List<NoticeVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<NoticeVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<String> getAttach(Integer notice_num)throws Exception;

}
