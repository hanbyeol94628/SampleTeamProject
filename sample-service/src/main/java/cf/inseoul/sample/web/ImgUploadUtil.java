package cf.inseoul.sample.web;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class ImgUploadUtil {

	static String uploadImg(MultipartFile sourceFile, HttpServletRequest request) throws Exception {
		
		String fileName = sourceFile.getOriginalFilename();
		byte[] fileData = sourceFile.getBytes();
		
		String rootPath = getRootPath(fileName, request); // 기본 경로
		String datePath = getDatePath(rootPath);
		

		String uuidFileName = UUID.randomUUID().toString() + "_" + fileName;

		File targetdir = new File(rootPath + datePath);
		
		if(targetdir.exists()) {
			System.out.println("디렉토리가 존재합니다.");
		} else {
			System.out.println("디렉토리가 없습니다.");
			targetdir.mkdirs();
		}
		
		File target = new File(rootPath + datePath + "//" +uuidFileName);
		
		System.out.println("[targetdir]	:" + targetdir);
		System.out.println("[target]	:" + target);
		
		
		if(target.exists()) {
			System.out.println("파일이 존재합니다.");
		}else {
			System.out.println("파일이 없습니다.");
			target.createNewFile();
		}
		
		System.out.println(target.exists());
		FileCopyUtils.copy(fileData, target);// 파일 객체에 파일 데이터 복사
		
		
		
		
		target.getParentFile().mkdirs();
		sourceFile.transferTo(target);

		
		return savedFilePath(datePath, uuidFileName);
		
	}


	public static HttpHeaders getHttpHeaders(String fileName) throws Exception{
		HttpHeaders httpHeaders = new HttpHeaders();
		MediaType mediaType = MediaUtils.getMediaType(fileName);
		httpHeaders.setContentType(mediaType);
		
		httpHeaders.add("Content-Disposition",
						"attachment; filename=\"" + new String(fileName.getBytes("UTF-8"),"ISO-8859-1")+"\"");
		return httpHeaders;
	}
	
	
	
	private static String savedFilePath(String datePath, String uuidFileName) {
		String savedFilePath = datePath + File.separator + uuidFileName;
		return savedFilePath.replace(File.separatorChar, '/');
	}

	private static String getDatePath(String rootPath) {
		Calendar calendar = Calendar.getInstance();
		String yearPath = File.separator + calendar.get(Calendar.YEAR);
		String monthPath = File.separator + new DecimalFormat("00").format(calendar.get(Calendar.MONTH)+1);
		String datePath = File.separator + new DecimalFormat("00").format(calendar.get(Calendar.DATE));
		
		makeDateDir(rootPath, yearPath, monthPath, datePath);
		
		return datePath;
	}

	private static String getRootPath(String fileName, HttpServletRequest request) {
		String rootPath = "/upload";
		return request.getSession().getServletContext().getRealPath(rootPath + "/images");
	}
	
	private static void makeDateDir(String uploadPath, String... paths) {
		if(new File(uploadPath + paths[paths.length - 1]).exists()) {
			return;
		}
		for(String path : paths) {
			File dirPath = new File(uploadPath + path);
			if(!dirPath.exists()) {
				dirPath.mkdir();
			}
		}
	}


	public static String getFileName(MultipartFile file, HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		return fileName;
	}
	
	
	
}
