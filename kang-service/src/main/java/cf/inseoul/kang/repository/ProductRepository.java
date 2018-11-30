package cf.inseoul.kang.repository;

import cf.inseoul.kang.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 상품 리파지토리 인터페이스
 */
public interface ProductRepository extends JpaRepository<Product, Long> {
}
