package cf.inseoul.sample.service;

import org.springframework.stereotype.Service;

import cf.inseoul.sample.domain.posts.ProductRepository;
import cf.inseoul.sample.dto.ProductSaveRequestDto;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class ProductService {

	private ProductRepository productRepository;
	
	public Long save(ProductSaveRequestDto dto) {
		return productRepository.save(dto.toEntity()).getId();
	}
}
