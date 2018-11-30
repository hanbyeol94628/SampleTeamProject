package cf.inseoul.sample.web;

import cf.inseoul.sample.domain.posts.PostsRepository;
import cf.inseoul.sample.dto.PostsSaveRequestDto;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
public class SampleRestController {

	private PostsRepository postsRepository;

	@PostMapping("/posts")
	public void savePosts(@RequestBody PostsSaveRequestDto dto){
		postsRepository.save(dto.toEntity());
	}
}
