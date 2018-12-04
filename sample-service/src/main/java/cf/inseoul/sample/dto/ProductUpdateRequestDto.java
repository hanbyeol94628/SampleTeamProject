package cf.inseoul.sample.dto;

import cf.inseoul.sample.domain.posts.Product;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ProductUpdateRequestDto {

	private Long id;
	private String categoryMain;
	private String categorySub;
	private String name;
	private long price;
	private String content;
	
	@Builder
	public ProductUpdateRequestDto(Long id, String categoryMain, String categorySub, String name, long price, String content) {
		this.id = id;
		this.categoryMain = categoryMain;
		this.categorySub = categorySub;
		this.name = name;
		this.price = price;
		this.content = content;
	}
	
	public Product toEntity() {
		return Product.builder()
				.categoryMain(categoryMain)
				.categorySub(categorySub)
				.name(name)
				.price(price)
				.content(content)
				.build();
	}
}
