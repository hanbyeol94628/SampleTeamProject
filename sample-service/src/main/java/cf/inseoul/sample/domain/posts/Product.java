package cf.inseoul.sample.domain.posts;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import cf.inseoul.sample.domain.BaseTimeEntity;
import lombok.Builder;
import lombok.Getter;

@Getter
@Entity
public class Product extends BaseTimeEntity{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String category;
	private String name;
	private String image;
	private long price;
	
	@Column(columnDefinition = "TEXT")
	private String content;
	
	@Builder
	public Product(String category, String name, String image, long price, String content) {
		this.category = category;
		this.name = name;
		this.image = image;
		this.price = price;
		this.content = content;
	}
	
}
