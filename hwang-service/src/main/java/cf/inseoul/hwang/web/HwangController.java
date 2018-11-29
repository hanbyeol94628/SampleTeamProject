package cf.inseoul.hwang.web;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@AllArgsConstructor
public class HwangController {

	@GetMapping("/")
	public String hwang(Model model) {

		List<String> listTest = new ArrayList<String>();

		listTest.add("test1");
		listTest.add("test2");
		listTest.add("test3");

		model.addAttribute("listTest", listTest);
		model.addAttribute("ObjectTest", "테스트 입니다.");

		return "index";
	}
}
