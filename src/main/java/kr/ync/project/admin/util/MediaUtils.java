package kr.ync.project.admin.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;

/**
 * MediaUtils.java
 *
 * @Author : 노현호
 * @Date   : 2018. 12. 14.
 * @Description
 * 이미지 확장자 삽입을 위한 Utils
 *
 */
public class MediaUtils {

	private static Map<String, MediaType> mediaMap;

	static {

		mediaMap = new HashMap<String, MediaType>();
		mediaMap.put("JPG", MediaType.IMAGE_JPEG);
		mediaMap.put("GIF", MediaType.IMAGE_GIF);
		mediaMap.put("PNG", MediaType.IMAGE_PNG);
	}

	public static MediaType getMediaType(String type) {

		return mediaMap.get(type.toUpperCase());
	}
}
