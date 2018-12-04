package cf.inseoul.sample.dto;

import cf.inseoul.sample.domain.posts.Product;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class ProductDetailDto {


	private Long id;
	private String categoryMain;
	private String categorySub;
	private String name;
	private long price;
	private String content;
	
	@Builder
	public ProductDetailDto(Product entity) {
		id = entity.getId();
		categoryMain = entity.getCategoryMain();
		categorySub = entity.getCategorySub();
		name = entity.getName();
		price = entity.getPrice();
		content = entity.getContent();
	}

}