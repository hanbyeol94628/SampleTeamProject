package cf.inseoul.sample.web;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import cf.inseoul.sample.domain.posts.PostsRepository;
import cf.inseoul.sample.domain.posts.ProductRepository;
import cf.inseoul.sample.dto.PostsSaveRequestDto;
import cf.inseoul.sample.dto.ProductSaveRequestDto;
import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class SampleRestController {

	private PostsRepository postsRepository;

	private ProductRepository productRepository;
	
	@PostMapping("/posts")
	public void savePosts(@RequestBody PostsSaveRequestDto dto){
		postsRepository.save(dto.toEntity());
	}
	
	
	
}
