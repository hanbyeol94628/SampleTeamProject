package cf.inseoul.kang.web;

import cf.inseoul.kang.domain.Product;
import cf.inseoul.kang.domain.Store;
import cf.inseoul.kang.service.RepositoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 가게 정보를 조회하는 컨트롤러
 */
@Controller
public class KangController {

	private final RepositoryService repositoryService;

	@Autowired
	public KangController(RepositoryService repositoryService) {
		this.repositoryService = repositoryService;
	}

	/**
	 * 가게 등록 폼 페이지
	 *
	 * @param model
	 * @return
	 */
	@GetMapping("/form")
	public String form(Model model) {
		model.addAttribute("title", "create your store!");
		model.addAttribute("store", new Store());
		return "form";
	}

	@PostMapping("/add")
	public String addStore(@ModelAttribute Store store, Model model) {
		Store entity = repositoryService.addStore(store);

		model.addAttribute("result", entity);
		return "result";
	}

	@GetMapping("/addProduct/{seq}")
	public String addProduct(@PathVariable Long seq, Model model) {
		Store store = repositoryService.findStoreBySeq(seq);
		model.addAttribute("title", "add Product");
		model.addAttribute("store", store);
		model.addAttribute("member", new Product());

		return "addProduct";
	}

	@PostMapping("/insert")
	public String insert(@ModelAttribute Product product, @RequestParam Long seq, Model model) {
		Product entity = repositoryService.addProduct(product, seq);

		model.addAttribute("result", entity);
		return "product";
	}

	@GetMapping("/")
	public String index(Model model) {

		List<String> listTest = new ArrayList<>();

		listTest.add("test1");
		listTest.add("test2");
		listTest.add("test3");

		model.addAttribute("listTest", listTest);
		model.addAttribute("ObjectTest", "테스트 입니다.");

		return "index";
	}
}
