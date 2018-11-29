package cf.inseoul.store.web;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@AllArgsConstructor
public class StoreController {

	@GetMapping("/")
	public String seo() {
		return "index";
	}
}
