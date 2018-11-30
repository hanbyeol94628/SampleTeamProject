package cf.inseoul.kang.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Created by kang
 * Date : 2018. 11. 30.
 * Description : 사용자 권한을 부여한다. 보통 User, Admin, Guest와 같은 개념을 부여한다
 */
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Role {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "role_id")
	private int id;

	@Column(name = "role")
	private String role;
}
