package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * UploadVO.java
 *
 * @Autors : 이용희
 * @Date : 2018. 12. 14.
 * @Description
 * 업로드 VO 객체
 * 
 */
@Getter
@Setter
@ToString
public class UploadVO {

	 private String  event_num;
	 private String event_url;

}