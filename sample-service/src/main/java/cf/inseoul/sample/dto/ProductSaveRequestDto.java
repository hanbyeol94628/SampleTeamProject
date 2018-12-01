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

	private String category;
	private String name;
	private String image;
	private long price;
	private String content;
	
	@Builder
	public ProductSaveRequestDto(String category, String name, String image, long price, String content) {
		this.category = category;
		this.name = name;
		this.image = image;
		this.price = price;
		this.content = content;
	}

	public Product toEntity() {
		return Product.builder()
				.category(category)
				.name(name)
				.image(image)
				.price(price)
				.content(content)
				.build();
	}
}
