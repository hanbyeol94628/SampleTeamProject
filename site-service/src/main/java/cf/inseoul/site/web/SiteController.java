package cf.inseoul.site.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SiteController {

	@GetMapping({"/", "index"})
	public String index() {
		return "index";
	}

	@GetMapping("/elements")
	public String elements() {
		return "elements";
	}

	@GetMapping("/generic")
	public String generic() {
		return "generic";
	}
}
