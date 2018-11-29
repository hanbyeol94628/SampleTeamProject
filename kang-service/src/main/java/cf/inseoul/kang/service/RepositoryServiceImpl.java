package cf.inseoul.kang.service;

import cf.inseoul.kang.dao.ProductRepository;
import cf.inseoul.kang.dao.StoreRepository;
import cf.inseoul.kang.domain.Product;
import cf.inseoul.kang.domain.Store;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 서비스 리파지토리 구현 클래스
 */
@Slf4j
@Service
public class RepositoryServiceImpl implements RepositoryService {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private StoreRepository storeRepository;

	public RepositoryServiceImpl() {
	}

	@Override
	public Store addStore(Store store) {
		return storeRepository.save(store);
	}

	@Override
	public Store findStoreBySeq(Long seq) {
		return null;
	}

	@Override
	public Product addProduct(Product product, Long seq) {
		Store store = storeRepository.findById(seq).get();
		Product saveEntity = new Product(store, product.getName());
		return productRepository.save(saveEntity);
	}
}
