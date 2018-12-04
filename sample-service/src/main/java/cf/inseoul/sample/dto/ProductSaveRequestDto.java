package cf.inseoul.sample.dto;

import cf.inseoul.sample.domain.posts.Product;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ProductSaveRequestDto {

	private String categoryMain;
	private String categorySub;
	private String name;
	private long price;
	private String content;
	
	@Builder
	public ProductSaveRequestDto(String categoryMain, String categorySub, String name, String image, long price, String content) {
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
