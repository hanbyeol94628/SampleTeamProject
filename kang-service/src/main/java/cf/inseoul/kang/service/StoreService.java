package cf.inseoul.kang.service;

import cf.inseoul.kang.domain.Product;
import cf.inseoul.kang.domain.Store;

import java.util.List;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 서비스 리파지토리 인터페이스
 */
public interface StoreService {

	Store addStore(Store store);

	Store findStoreBySeq(Long seq);

	Product addProduct(Product product, Long seq);

	List<Store> findStoreAll();
}
