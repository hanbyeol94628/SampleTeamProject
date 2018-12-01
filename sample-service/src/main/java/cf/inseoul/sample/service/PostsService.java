package cf.inseoul.sample.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cf.inseoul.sample.domain.posts.PostsRepository;
import cf.inseoul.sample.dto.PostsMainResponseDto;
import cf.inseoul.sample.dto.PostsSaveRequestDto;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class PostsService {

	/*
	Tip)
	Controller에서 Dto.toEntity를 통해서 바로 전달해도 되는데 굳이 Service에서 Dto를 받는 이유는 간단합니다.
	Controller와 Service 의 역할을 분리하기 위함입니다.
	비지니스 로직 & 트랜잭션 관리는 모두 Service에서 관리하고, View 와 연동되는 부분은 Controller에서 담당하도록 구성합니다.
	*/

	private PostsRepository postsRepository;

	@Transactional
	public Long save(PostsSaveRequestDto dto){
		return postsRepository.save(dto.toEntity()).getId();
	}

	
	/*
	옵션(readOnly = true)을 주면 트랜잭션 범위는 유지하되, 조회 기능만 남겨두어 조회 속도가 개선되기 때문에 특별히 등록/수정/삭제 기능이 없는 메소드에선 사용하시는걸 추천드립니다.
	 */
	@Transactional(readOnly = true)
	public List<PostsMainResponseDto> findAllDesc() {
		return postsRepository.findAllDesc()
				.map(PostsMainResponseDto::new)
				.collect(Collectors.toList());
	}
}
