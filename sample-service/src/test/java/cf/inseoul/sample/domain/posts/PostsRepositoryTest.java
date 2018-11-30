package cf.inseoul.sample.domain.posts;

import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;
import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

@RunWith(SpringRunner.class)
@SpringBootTest
public class PostsRepositoryTest {

	/*
	Tip)
	given, when, then은 BDD(Behaviour-Driven Development)에서 사용하는 용어입니다.
	JUnit에선 이를 명시적으로 지원해주지 않아 주석으로 표현했습니다.
	전문 BDD 프레임워크로 Groovy기반의 Spock을 많이들 사용하고 있습니다.
	given: 테스트 기반 환경을 구축하는 단계
	when: 테스트 하고자 하는 행위 선언
	then: 테스트 결과 검증
	*/

	@Autowired
	PostsRepository postsRepository;

	@After
	public void cleanup() {
		/**
		 이후 테스트 코드에 영향을 끼치지 않기 위해
		 테스트 메소드가 끝날때 마다 respository 전체 비우는 코드
		 **/
		postsRepository.deleteAll();
	}

	@Test
	public void 게시글저장_불러오기() {
		//given
		postsRepository.save(Posts.builder()
				.title("테스트 게시글")
				.content("테스트 본문")
				.author("jojoldu@gmail.com")
				.build());

		//when
		List<Posts> postsList = postsRepository.findAll();

		//then
		Posts posts = postsList.get(0);
		assertThat(posts.getTitle(), is("테스트 게시글"));
		assertThat(posts.getContent(), is("테스트 본문"));
	}

	@Test
	public void BaseTimeEntity_등록 () {
		//given
		LocalDateTime now = LocalDateTime.now();
		postsRepository.save(Posts.builder()
				.title("테스트 게시글")
				.content("테스트 본문")
				.author("jojoldu@gmail.com")
				.build());
		//when
		List<Posts> postsList = postsRepository.findAll();

		//then
		Posts posts = postsList.get(0);
		assertTrue(posts.getCreatedDate().isAfter(now));
		assertTrue(posts.getModifiedDate().isAfter(now));
	}
}
