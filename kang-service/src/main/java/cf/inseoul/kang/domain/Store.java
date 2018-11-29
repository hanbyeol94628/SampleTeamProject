package cf.inseoul.kang.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Collection;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 가게 정보 엔티티
 */
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Store {

	@Id
	@Column(name = "seq")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long seq;

	@Column(name = "store_name")
	private String storeName;

	// @OneToMany 의 fetch 기본전략은 LAZY 이다.
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "team", fetch = FetchType.LAZY)
	private Collection<Product> products;

	public Store(String storeName) {
		this.storeName = storeName;
	}
}
