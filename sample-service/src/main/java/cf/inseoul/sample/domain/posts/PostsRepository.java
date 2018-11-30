package cf.inseoul.sample.domain.posts;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.stream.Stream;

public interface PostsRepository extends JpaRepository<Posts, Long> {

	/*
	Tip)
	보통 ibatis/MyBatis 등에서 Dao라고 불리는 DB Layer 접근자입니다.
	JPA에선 Repository라고 부르며 인터페이스로 생성합니다.
	단순히 인터페이스를 생성후, JpaRepository<Entity클래스, PK타입>를 상속하면 기본적인 CRUD 메소드가 자동생성 됩니다.
	실제로 아래 코드는 SpringDataJpa에서 제공하는 기본 메소드만으로 해결할 수 있는데요.
	굳이 @Query를 쓴 이유는, SpringDataJpa에서 제공하지 않는 메소드는 위처럼 쿼리로 작성해도 되는것을 보여주기 위함입니다.
	*/

	@Query("SELECT p " +
			"FROM Posts p " +
			"ORDER BY p.id DESC")
	Stream<Posts> findAllDesc();
}
