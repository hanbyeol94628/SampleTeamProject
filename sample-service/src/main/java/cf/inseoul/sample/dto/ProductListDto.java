package cf.inseoul.sample.dto;

import cf.inseoul.sample.domain.posts.Product;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class ProductListDto {


	private Long id;
	private String category;
	private String name;
	private String image;
	private long price;
	private String content;
	
	@Builder
	public ProductListDto(Product entity) {
		id = entity.getId();
		category = entity.getCategory();
		name = entity.getName();
		image = entity.getImage();
		price = entity.getPrice();
		content = entity.getContent();
	}

}