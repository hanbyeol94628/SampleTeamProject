package cf.inseoul.kang.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 상품 정보 엔티티
 */
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Product {

	@Id
	@Column(name = "seq")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long seq;

	@Column(name = "name")
	private String name;

	// @ManyToOne 의 fetch 기본전략은 EAGER 이다.
	@ManyToOne(optional = false)
	@JoinColumn(name = "store_seq")
	private Store store;

	public Product(Store store, String name) {
		this.store = store;
		this.name = name;
	}
}
