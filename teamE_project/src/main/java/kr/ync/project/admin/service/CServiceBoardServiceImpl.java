package kr.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.admin.domain.CServiceVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.persistence.CServiceBoardDAO;
import lombok.extern.slf4j.Slf4j;

/**
 * CServiceBoardServiceImpl.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 1:1문의 서비스 구현소스
 * 
 */
@Service
@Slf4j
public class CServiceBoardServiceImpl implements CServiceBoardService {

	@Autowired
	private CServiceBoardDAO dao;

	// 글 등록 시 첨부파일 table에 첨부파일 정보를 등록 시켜야 한다.
	// 따라서 글 등록(insert), 첨부파일 등록(여러개의 insert) 모두
	// 정상 등록 되었을때만 처리하기위해 하나의 Transaction으로 묶는다.
	// ajax방식으로 upload 시 미리 파일을 upload 후 DB에 insert를 하게되는데
	// DB insert 오류 시 하나의 Transaction으로 묶여 DB insert는 되지 않지만
	// 기존에 upload된 파일은 지워지지 않는 로직상의 오류가 존재한다.
	@Transactional
	@Override
	public void regist(CServiceVO board) throws Exception {
		dao.create(board);

		String[] files = board.getFiles();
		log.info("serviec.........." + board.toString());
		if (files == null) {
			log.info("upload된 파일이 존재하지 않습니다.");
			return;
		}
		
		// 등록되는 파일이 여러개 이다.
		for (String fileName : files) {
			dao.addAttach(fileName);
		}
	}
	 
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public CServiceVO read(Integer ask_num) throws Exception {
		return dao.read(ask_num);
	}

	// 수정, 삭제 시에도 첨부파일 정보의 변경이 일어나기에 Transaction을 묶어준다.
	@Transactional
	@Override
	public void modify(CServiceVO board) throws Exception {
		dao.update(board);

		Integer ask_num = board.getAsk_num();


		String[] files = board.getFiles();

		if (files == null) {
			return;
		}

		for (String fileName : files) {
			dao.replaceAttach(fileName, ask_num);
		}
	}
	
	// 수정, 삭제 시에도 첨부파일 정보의 변경이 일어나기에 Transaction을 묶어준다.
	@Transactional
	@Override
	public void remove(Integer ask_num) throws Exception {
		dao.delete(ask_num);
	}

	@Override
	public List<CServiceVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<CServiceVO> listCriteria(Criteria cri) throws Exception {

		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

	@Override
	public List<CServiceVO> listSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return dao.listSearchCount(cri);
	}
	
	@Override
	public List<String> getAttach(Integer ask_num) throws Exception {

		return dao.getAttach(ask_num);
	}
}
