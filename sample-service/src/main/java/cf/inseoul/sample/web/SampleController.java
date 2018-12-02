package cf.inseoul.sample.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import cf.inseoul.sample.domain.posts.Product;
import cf.inseoul.sample.dto.ProductSaveRequestDto;
import cf.inseoul.sample.service.PostsService;
import cf.inseoul.sample.service.ProductService;
import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class SampleController {

	/*
	Tip)
	Spring 4.3 부터는 @RequestMapping을 대체할 수 있는 여러 매핑 어노테이션이 추가 되었습니다.
	위에서 나온 @GetMapping은 이전으로 보면 @RequestMapping(value="/", method = RequestMethod.GET)과 동일합니다.
	*/

	private PostsService postsService;
	private ProductService productService;

	@GetMapping({"/", "/index"})
	public String index(Model model) {
		model.addAttribute("posts", postsService.findAllDesc());
		return "index";
	}

	@GetMapping("/generic")
	public String generic() {
		return "generic";
	}

	@GetMapping("/elements")
	public String elements() {
		return "elements";
	}

	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
	// 상품 등록 페이지 
	@GetMapping("/AddProduct")
	public String hanbyeolTest() {
		return "AddProduct";
	}
	// 상품 등록 처리
	@PostMapping("/productSave")
	public String productSave(ProductSaveRequestDto dto) {
		productService.save(dto);
		return "ProductDetail";
	}
	
	
	// 상품 목록 페이지 
	@GetMapping("/ProductList")
	public String productList(Model model) {
		
		List<Product> products = productService.list();
		model.addAttribute("products", products);
		
		return "ProductList";
	}
}
