package cf.inseoul.kang.web;

import cf.inseoul.kang.domain.Product;
import cf.inseoul.kang.domain.Store;
import cf.inseoul.kang.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author : kang
 * @Date : 2018. 11. 29.
 * @Description : 가게 정보를 조회하는 컨트롤러
 */
@Controller
public class StoreController {

	private final StoreService storeService;

	@Autowired
	public StoreController(StoreService storeService) {
		this.storeService = storeService;
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
		Store entity = storeService.addStore(store);

		model.addAttribute("result", entity);
		return "result";
	}

	@GetMapping("/addProduct/{seq}")
	public String addProduct(@PathVariable Long seq, Model model) {
		Store store = storeService.findStoreBySeq(seq);
		model.addAttribute("title", "add Product");
		model.addAttribute("store", store);
		model.addAttribute("product", new Product());

		return "addProduct";
	}

	@PostMapping("/insert")
	public String insert(@ModelAttribute Product product, @RequestParam Long seq, Model model) {
		Product entity = storeService.addProduct(product, seq);

		model.addAttribute("result", entity);
		return "product";
	}

	@GetMapping("/list")
	public String list(Model model) {
		List<Store> storeList = storeService.findStoreAll();
		model.addAttribute("storeList", storeList);

		return "list";
	}
}
