package cf.inseoul.sample.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
	
	public void delete(Long id) {
		productRepository.deleteById(id);
	}
	
	public Page<Product> listAll(Pageable pageable){
		return productRepository.findAll(pageable);
	}

	public Page<Product> findTop10ByOrderByIdDesc(Pageable pageable) {
		return productRepository.findTop10ByOrderByIdDesc(pageable);
	}

	
	
}
