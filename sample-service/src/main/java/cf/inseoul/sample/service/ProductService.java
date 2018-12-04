package cf.inseoul.sample.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import cf.inseoul.sample.domain.posts.Product;
import cf.inseoul.sample.domain.posts.ProductRepository;
import cf.inseoul.sample.dto.ProductSaveRequestDto;
import cf.inseoul.sample.dto.ProductUpdateRequestDto;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class ProductService {

	private ProductRepository productRepository;
	
	public Long save(ProductSaveRequestDto dto) {
		return productRepository.save(dto.toEntity()).getId();
	}
	
	public Long update(ProductUpdateRequestDto dto) {
		Product origin = productRepository.findById(dto.getId()).get();
		origin.update(dto);
		return productRepository.save(origin).getId();
	}
	
	public List<Product> list() {
		return productRepository.findAll();
	}
	
	public Optional<Product> detail(Long id) {
		return productRepository.findById(id);
	}
	
	
	
}
