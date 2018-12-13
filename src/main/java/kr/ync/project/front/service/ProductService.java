package kr.ync.project.front.service;

import java.util.List;

import kr.ync.project.front.domain.ProductVO;
import kr.ync.project.front.domain.ImageVO;


public interface ProductService {

	public void regist(ProductVO board) throws Exception;

	public ProductVO read(Integer bno) throws Exception;

	public void modify(ProductVO board) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<ProductVO> listAll() throws Exception;
	
	public List<ProductVO> AssemblyPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3, String TAG_4, String TAG_5, String TAG_6) throws Exception;
	
	public ImageVO event_img(int event_num) throws Exception;
	
	public List<ProductVO> StandardPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3) throws Exception;
	
	public List<ProductVO> LaptopPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3) throws Exception;
	
	public ProductVO Detail(int PRODUCT_NUM) throws Exception;
	
	public List<ProductVO> Review(int PRODUCT_NUM) throws Exception;
	
	public List<ProductVO> Search(String keyword, int sort) throws Exception;

/*	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;*/

}
