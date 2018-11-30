package cf.inseoul.sample.domain.posts;

import cf.inseoul.sample.domain.BaseTimeEntity;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@NoArgsConstructor(access = AccessLevel.PROTECTED) // 기본 생성자 자동 추가(기본생성자의 접근 권한을 protected로 제한)
@Getter // 클래스내 모든 필드의 Getter 메소드를 자동생성
@Entity // 테이블과 링크될 클래스임을 나타냅니다.
public class Posts extends BaseTimeEntity {

	/*
	Tip)
	여기서 Posts 클래스는 실제 DB의 테이블과 매칭될 클래스이며 보통 Entity클래스라고도 합니다.
	JPA를 사용하시면 DB 데이터에 작업할 경우 실제 쿼리를 날리기 보다는, 이 Entity 클래스의 수정을 통해 작업합니다.

	추가)
	Entity 클래스를 생성하실때, 주의하실것은 무분별한 setter 메소드 생성입니다.
	자바빈 규약을 생각하시면서 getter/setter를 무작정 생성하시는 분들이 계시는데요.
	이렇게 되면 해당 클래스의 인스턴스 값들이 언제 어디서 변해야하는지 코드상으로 명확히 구분할수가 없어, 차후 기능변경시 정말 복잡해집니다.
	해당 필드의 값 변경이 필요하면 명확히 그 목적과 의도를 나타낼 수 있는 메소드를 추가하셔야만 합니다.
	*/

	@Id // 해당 테이블의 PK 필드를 나타냅니다.
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	// 테이블의 컬럼을 나타내면, 굳이 선언하지 않더라도 해당 클래스의 필드는 모두 컬럼이 됩니다.
	@Column(length = 500, nullable = false)
	private String title;

	@Column(columnDefinition = "TEXT", nullable = false)
	private String content;

	private String author;

	@Builder // 해당 클래스의 빌더패턴 클래스를 생성
	public Posts(String title, String content, String author) {
		this.title = title;
		this.content = content;
		this.author = author;
	}
}
