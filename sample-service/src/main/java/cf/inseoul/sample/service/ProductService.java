package cf.inseoul.sample.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cf.inseoul.sample.domain.posts.Product;
import cf.inseoul.sample.domain.posts.ProductRepository;
import cf.inseoul.sample.dto.ProductListDto;
import cf.inseoul.sample.dto.ProductSaveRequestDto;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class ProductService {

	private ProductRepository productRepository;
	
	public Long save(ProductSaveRequestDto dto) {
		return productRepository.save(dto.toEntity()).getId();
	}
	
	public List<Product> list() {
		return productRepository.findAll();
	}
}
