package cf.inseoul.kang.service;

import cf.inseoul.kang.domain.Product;
import cf.inseoul.kang.domain.Store;
import cf.inseoul.kang.repository.ProductRepository;
import cf.inseoul.kang.repository.StoreRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 서비스 리파지토리 구현 클래스
 */
@Slf4j
@Service
public class StoreServiceImpl implements StoreService {

	private final ProductRepository productRepository;

	private final StoreRepository storeRepository;

	@Autowired
	public StoreServiceImpl(ProductRepository productRepository, StoreRepository storeRepository) {
		this.productRepository = productRepository;
		this.storeRepository = storeRepository;
	}

	@Override
	public Store addStore(Store store) {
		return storeRepository.save(store);
	}

	@Override
	public Store findStoreBySeq(Long seq) {
		return storeRepository.findById(seq).get();
	}

	@Override
	public Product addProduct(Product product, Long seq) {
		Store store = storeRepository.findById(seq).get();
		Product saveEntity = new Product(store, product.getName());
		return productRepository.save(saveEntity);
	}

	@Override
	public List<Store> findStoreAll() {
		return storeRepository.findAll();
	}
}
