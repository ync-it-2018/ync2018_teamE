package kr.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.front.domain.ProductVO;
import kr.ync.project.front.domain.ImageVO;
import kr.ync.project.front.persistence.ProductDAO;



@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO dao;

	@Override
	public void regist(ProductVO board) throws Exception {
		dao.create(board);
	}
	

	@Override
	public ProductVO read(Integer bno) throws Exception {

		return dao.read(bno);
	}

	@Override
	public void modify(ProductVO board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		dao.delete(bno);
	}

	@Override
	public List<ProductVO> listAll() throws Exception {
		return dao.listAll();
	}
	
	@Override
	public List<ProductVO> AssemblyPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3, String TAG_4, String TAG_5, String TAG_6) throws Exception {
		return dao.AssemblyPC(CATEGORY1_NUM , CATEGORY2_NUM, CATEGORY3_NUM, TAG_1, TAG_2, TAG_3, TAG_4, TAG_5, TAG_6 );
	}
	
	@Override
	public List<ProductVO> StandardPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3) throws Exception {
		return dao.StandardPC(CATEGORY1_NUM, CATEGORY2_NUM, CATEGORY3_NUM, TAG_1, TAG_2, TAG_3);
	}
	
	@Override
	public List<ProductVO> LaptopPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3) throws Exception {
		return dao.LaptopPC(CATEGORY1_NUM, CATEGORY2_NUM, CATEGORY3_NUM, TAG_1, TAG_2, TAG_3);
	}
	
	// 글 내용보기 시 view count를 +1 증가시켜준다. 
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public ProductVO Detail(int PRODUCT_NUM) throws Exception {
		dao.updateViewCnt(PRODUCT_NUM);
		return dao.Detail(PRODUCT_NUM);
	}
	
	@Override
	public List<ProductVO> Review(int PRODUCT_NUM) throws Exception {
		return dao.Review(PRODUCT_NUM);
	}
	
	@Override
	public List<ProductVO> Search(String keyword, int sort) throws Exception {
		return dao.Search(keyword, sort);
	}

	@Override
	public ImageVO event_img(int event_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.event_img(event_num);
	}

	
	/*@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {

		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return dao.countPaging(cri);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {

		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return dao.listSearchCount(cri);
	}*/

}
