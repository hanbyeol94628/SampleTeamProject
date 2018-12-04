package cf.inseoul.sample.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;

class MediaUtils {
	
	private static Map<String, MediaType> mediaTypeMap;
	
	static {
		mediaTypeMap = new HashMap<>();
		mediaTypeMap.put("jpg", MediaType.IMAGE_JPEG);
		mediaTypeMap.put("gif", MediaType.IMAGE_GIF);
		mediaTypeMap.put("png", MediaType.IMAGE_PNG);
	}
	
	static MediaType getMediaType(String fileName) {
		String formatName = getFormatName(fileName);
		return mediaTypeMap.get(formatName);
	}
	
	static String getFormatName(String fileName) {
		return fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
	}

}
