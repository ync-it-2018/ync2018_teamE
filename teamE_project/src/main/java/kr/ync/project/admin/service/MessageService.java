package kr.ync.project.admin.service;

import kr.ync.project.admin.domain.MessageVO;

public interface MessageService {

	public void addMessage(MessageVO vo) throws Exception;

	public MessageVO readMessage(String uids, Integer mno) throws Exception;
}
