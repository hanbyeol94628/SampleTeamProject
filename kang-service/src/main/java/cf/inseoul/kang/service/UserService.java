package cf.inseoul.kang.service;

import cf.inseoul.kang.domain.User;

/**
 * @Author : kang
 * @Date : 2018. 11. 30.
 * @Description : 회원 서비스 리파지토리 인터페이스
 */
public interface UserService {

	User findUserByEmail(String email);
	void saveUser(User user);
}
