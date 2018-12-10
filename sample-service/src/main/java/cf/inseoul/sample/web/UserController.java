package cf.inseoul.sample.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/user")
public class UserController {

	/*
	Tip)
	Spring 4.3 부터는 @RequestMapping을 대체할 수 있는 여러 매핑 어노테이션이 추가 되었습니다.
	위에서 나온 @GetMapping은 이전으로 보면 @RequestMapping(value="/", method = RequestMethod.GET)과 동일합니다.
	*/


	@GetMapping({"", "/index"})
	public String index() {
		return "user/userMain";
	}


	
	@GetMapping("/cart")
	public String gotocart() {
		return "/user/cart";
	}
	
	
	@GetMapping("/userOrderList")
	public String hanbyeolTest() {
		return "/user/userOrderList";
	}
	
	
}
