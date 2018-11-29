package cf.inseoul.kang.dao;

import cf.inseoul.kang.domain.Store;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 가게 리파지토리 인터페이스
 */
public interface StoreRepository extends JpaRepository<Store, Long> {
}
