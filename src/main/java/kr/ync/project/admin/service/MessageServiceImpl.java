package kr.ync.project.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.admin.domain.MessageVO;
import kr.ync.project.admin.persistence.MessageDAO;
import kr.ync.project.admin.persistence.PointDAO;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageDAO messageDAO;

	@Autowired
	private PointDAO pointDAO;

	@Transactional
	@Override
	public void addMessage(MessageVO vo) throws Exception {

		messageDAO.create(vo);
		pointDAO.updatePoint(vo.getSender(), 10);
	}

	@Override
	public MessageVO readMessage(String uids, Integer mno) throws Exception {

		messageDAO.updateState(mno);

		pointDAO.updatePoint(uids, 5);

		return messageDAO.readMessage(mno);
	}
}
