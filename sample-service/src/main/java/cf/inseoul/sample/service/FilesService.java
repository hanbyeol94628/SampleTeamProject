package cf.inseoul.sample.service;

import org.springframework.stereotype.Service;

import cf.inseoul.sample.domain.posts.Files;
import cf.inseoul.sample.domain.posts.FilesRepository;
import cf.inseoul.sample.dto.FilesSaveDto;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class FilesService {
	
	private FilesRepository filesRepository;

	public Long filesSave(FilesSaveDto file) throws Exception{
		return filesRepository.save(file.toEntity()).getId();
	}
	
	public <Optional>Files filesView(Long productId) throws Exception{
		return filesRepository.findByProductId(productId);
	}
	
	public void filesDelete(Long productId) throws Exception{
		return;
	}
}
