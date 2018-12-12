package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PointDAOImpl implements PointDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.PointMapper";

	@Override
	public void updatePoint(String uids, int point) throws Exception {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("uids", uids);
		paramMap.put("point", point);

		session.update(namespace + ".updatePoint", paramMap);

	}

}
