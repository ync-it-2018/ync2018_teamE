package kr.ync.project.front.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.ProductVO;
import kr.ync.project.front.domain.ImageVO;



@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.ProductMapper";

	@Override
	public void create(ProductVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public ProductVO read(Integer bno) throws Exception {
		return session.selectOne(namespace + ".read", bno);
	}

	@Override
	public void update(ProductVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace + ".delete", bno);
	}
	
	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		Map<String, Object> paraMap = new HashMap<String, Object>();

		paraMap.put("bno", bno);
		paraMap.put("amount", amount);

		session.update(namespace + ".updateReplyCnt", paraMap);
	}

	@Override
	public List<ProductVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<ProductVO> listPage(int page) throws Exception {

		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	
	public List<ProductVO> AssemblyPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM,String TAG_1, String TAG_2, String TAG_3, String TAG_4, String TAG_5, String TAG_6) throws Exception {
		 Map<String, Object> parameters = new HashMap<String, Object>();
		 parameters.put("CATEGORY1_NUM", CATEGORY1_NUM);
		 parameters.put("CATEGORY2_NUM", CATEGORY2_NUM);
		 parameters.put("CATEGORY3_NUM", CATEGORY3_NUM);
		 parameters.put("TAG_1", TAG_1);
		 parameters.put("TAG_2", TAG_2);
		 parameters.put("TAG_3", TAG_3);
		 parameters.put("TAG_4", TAG_4);
		 parameters.put("TAG_5", TAG_5);
		 parameters.put("TAG_6", TAG_6);
		 
		 System.out.println(parameters.toString());
		 return session.selectList(namespace + ".read",parameters);
	}

	@Override
	public ImageVO event_img(int event_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".event_img", event_num);
	}
	 
	public List<ProductVO> StandardPC(int CATEGORY1_NUM, int CATEGORY2_NUM) throws Exception {
		 Map<String, Object> parameters = new HashMap<String, Object>();
		 parameters.put("CATEGORY1_NUM", CATEGORY1_NUM);
		 parameters.put("CATEGORY2_NUM", CATEGORY2_NUM);
		
		 return session.selectList(namespace + ".standard", parameters);
	}
	
	public List<ProductVO> LaptopPC(int CATEGORY1_NUM, int CATEGORY2_NUM) throws Exception {
		 Map<String, Object> parameters = new HashMap<String, Object>();
		 parameters.put("CATEGORY1_NUM", CATEGORY1_NUM);
		 parameters.put("CATEGORY2_NUM", CATEGORY2_NUM);
		
		 return session.selectList(namespace + ".laptop", parameters);
	}
	
	public ProductVO Detail(int PRODUCT_NUM) throws Exception {
		return session.selectOne(namespace + ".detail",PRODUCT_NUM);
	}
	
	public List<ProductVO> Review(int PRODUCT_NUM) throws Exception {
		
		 return session.selectList(namespace + ".review", PRODUCT_NUM);
	}
	
	public List<ProductVO> Search(String keyword) throws Exception {
		
		 return session.selectList(namespace + ".search", keyword);
	}
	
	/*@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {

		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}
	*/
	
	@Override
	public void updateViewCnt(Integer bno) throws Exception {

		session.update(namespace + ".updateViewCnt", bno);

	}
}
