package cf.inseoul.sample.domain.posts;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import cf.inseoul.sample.domain.BaseTimeEntity;
import cf.inseoul.sample.dto.ProductUpdateRequestDto;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
public class Product extends BaseTimeEntity{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String categoryMain;
	private String categorySub;
	private String name;
	private Long price;
	
	@Column(columnDefinition = "TEXT")
	private String content;
	
	@Builder
	public Product(Long id, String categoryMain, String categorySub, String name, Long price, String content) {
		this.id = id;
		this.categoryMain = categoryMain;
		this.categorySub = categorySub;
		this.name = name;
		this.price = price;
		this.content = content;
	}
	
	public void update(ProductUpdateRequestDto dto) {
		this.categoryMain = dto.getCategoryMain();
		this.categorySub = dto.getCategorySub();
		this.name = dto.getName();
		this.price = dto.getPrice();
		this.content = dto.getContent();
	}
	
}
