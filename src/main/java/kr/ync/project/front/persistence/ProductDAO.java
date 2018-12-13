package kr.ync.project.front.persistence;

import java.util.List;

import kr.ync.project.front.domain.ProductVO;
import kr.ync.project.front.domain.ImageVO;



public interface ProductDAO {

	public void create(ProductVO vo) throws Exception;

	public ProductVO read(Integer bno) throws Exception;

	public void update(ProductVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	public List<ProductVO> listAll() throws Exception;

	public List<ProductVO> listPage(int page) throws Exception;
	
	public List<ProductVO> AssemblyPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3, String TAG_4, String TAG_5, String TAG_6) throws Exception;
	
	public ImageVO event_img(int event_num) throws Exception;

	public List<ProductVO> StandardPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3) throws Exception;
	
	public List<ProductVO> LaptopPC(int CATEGORY1_NUM, int CATEGORY2_NUM, String CATEGORY3_NUM, String TAG_1, String TAG_2, String TAG_3) throws Exception;
	
	public ProductVO Detail(int PRODUCT_NUM) throws Exception;
	
	public void updateViewCnt(Integer bno)throws Exception;
	
	public List<ProductVO> Review(int PRODUCT_NUM) throws Exception;
	
	public List<ProductVO> Search(String keyword, int sort) throws Exception;
	

//	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//
//	public int countPaging(Criteria cri) throws Exception;
//   
//	//use for dynamic SQL
//	// 검색이 적용된 Query 결과 List
//	public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
//	
//	// 검색이 적용된 Query 결과 Count
//	public int listSearchCount(SearchCriteria cri)throws Exception;
//	
//	public void updateViewCnt(Integer bno)throws Exception;

}
