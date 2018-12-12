package kr.ync.project.admin.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.MessageVO;

@Repository
public class MessageDAOImpl implements MessageDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.MessageMapper";

	@Override
	public void create(MessageVO vo) throws Exception {

		session.insert(namespace + ".create", vo);
	}

	@Override
	public MessageVO readMessage(Integer mno) throws Exception {

		return session.selectOne(namespace + ".readMessage", mno);
	}

	@Override
	public void updateState(Integer mno) throws Exception {

		session.update(namespace + ".upldateState", mno);

	}

}
