package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.CServiceVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;

public interface CServiceBoardService {

	public void regist(CServiceVO board) throws Exception;

	public CServiceVO read(Integer ask_num) throws Exception;

	public void modify(CServiceVO board) throws Exception;

	public void remove(Integer ask_num) throws Exception;

	public List<CServiceVO> listAll() throws Exception;

	public List<CServiceVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<CServiceVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<String> getAttach(Integer ask_num)throws Exception;

}
