package kr.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.persistence.NoticeBoardDAO;
import lombok.extern.slf4j.Slf4j;

/**
 * NoticeBoardServiceImpl.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 공지사항 게시판 서비스 구현 소스
 * 
 */
@Service
@Slf4j
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private NoticeBoardDAO dao;

	// 글 등록 시 첨부파일 table에 첨부파일 정보를 등록 시켜야 한다.
	// 따라서 글 등록(insert), 첨부파일 등록(여러개의 insert) 모두
	// 정상 등록 되었을때만 처리하기위해 하나의 Transaction으로 묶는다.
	// ajax방식으로 upload 시 미리 파일을 upload 후 DB에 insert를 하게되는데
	// DB insert 오류 시 하나의 Transaction으로 묶여 DB insert는 되지 않지만
	// 기존에 upload된 파일은 지워지지 않는 로직상의 오류가 존재한다.
	@Transactional
	@Override
	public void regist(NoticeVO board) throws Exception {
		dao.create(board);		
	}
	 
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public NoticeVO read(Integer notice_num) throws Exception {
		return dao.read(notice_num);
	}

	// 수정, 삭제 시에도 첨부파일 정보의 변경이 일어나기에 Transaction을 묶어준다.
	@Transactional
	@Override
	public void modify(NoticeVO board) throws Exception {
		dao.update(board);

		Integer notice_num = board.getNotice_num();


		String[] files = board.getFiles();

		if (files == null) {
			return;
		}

		for (String fileName : files) {
			dao.replaceAttach(fileName, notice_num);
		}
	}
	
	// 수정, 삭제 시에도 첨부파일 정보의 변경이 일어나기에 Transaction을 묶어준다.
	@Transactional
	@Override
	public void remove(Integer notice_num) throws Exception {
		dao.delete(notice_num);
	}

	@Override
	public List<NoticeVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<NoticeVO> listCriteria(Criteria cri) throws Exception {

		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

	@Override
	public List<NoticeVO> listSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return dao.listSearchCount(cri);
	}
	
	@Override
	public List<String> getAttach(Integer notice_num) throws Exception {

		return dao.getAttach(notice_num);
	}
}
