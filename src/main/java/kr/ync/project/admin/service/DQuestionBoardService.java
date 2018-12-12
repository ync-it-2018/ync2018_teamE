package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.QnAVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

public interface DQuestionBoardService {

	public void regist(QnAVO board) throws Exception;

	public QnAVO read(Integer qna_num) throws Exception;

	public void modify(QnAVO board) throws Exception;

	public void remove(Integer qna_num) throws Exception;

	public List<QnAVO> listAll() throws Exception;

	public List<QnAVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<QnAVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<String> getAttach(Integer qna_num)throws Exception;

}
