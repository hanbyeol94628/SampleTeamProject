package cf.inseoul.hwang.web;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@AllArgsConstructor
public class HwangController {

	@GetMapping("/")
	public String index() {
		return "index";
	}
}
