package cf.inseoul.sample.web;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cf.inseoul.sample.domain.posts.Files;
import cf.inseoul.sample.domain.posts.Product;
import cf.inseoul.sample.dto.FilesSaveDto;
import cf.inseoul.sample.dto.ProductSaveRequestDto;
import cf.inseoul.sample.dto.ProductUpdateRequestDto;
import cf.inseoul.sample.service.FilesService;
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

	private ProductService productService;
	private FilesService filesService;

	@GetMapping({"/", "/index"})
	public String index() {
		return "index";
	}


	@GetMapping("/elements")
	public String elements() {
		return "elements";
	}
	
	@GetMapping("/OrderList")
	public String order() {
		return "orderList";
	}
	
	@GetMapping("/Qna")
	public String qna() {
		return "qna";
	}
	
	
	
	@GetMapping("/insertData")
	public String insertData() {
		
		for(int i = 0; i<50; i++) {
			ProductSaveRequestDto tempdto = new ProductSaveRequestDto();
			tempdto.setCategoryMain("상의");
			tempdto.setCategorySub("블라우스/셔츠");
			tempdto.setName(i+"번째 블라우스라네요");
			tempdto.setPrice(135000);
			tempdto.setContent("<b>"+i+"번째 블라우스"+"</b>");
			
			productService.save(tempdto);
		}
		
		return "redirect:/ProductList?page=1";
	}
	
	
	// 상품 등록 페이지 
	@GetMapping("/AddProduct")
	public String hanbyeolTest() {
		return "AddProduct";
	}
	// 상품 등록 처리
	@PostMapping("/productSave")
	public String productSave(Model model, ProductSaveRequestDto dto, FilesSaveDto filedto, @RequestParam MultipartFile file, HttpServletRequest request) throws Exception {
		System.err.println("▶▶▶▶▶▶▶▶▶상품 등록됨");
		
		filedto.setFileUrl(ImgUploadUtil.uploadImg(file, request));
		filedto.setFileName(ImgUploadUtil.getFileName(file, request));
		filedto.setProductId(productService.save(dto));

		filesService.filesSave(filedto);
		System.err.println("▶▶▶▶▶▶▶▶▶파일 등록됨");

		return "redirect:/ProductList";
	}
	
	@GetMapping("/ProductList{page}")
	public String productList(Model model, @RequestParam(value="page", defaultValue = "1") int page) throws Exception {
		
		Pageable pageable = PageRequest.of(page - 1, 10, Sort.by(Direction.DESC, "id"));
		Page<Product> pageInfo = productService.listAll(pageable);
		List<Product> products = pageInfo.getContent();

		model.addAttribute("products", products);
		model.addAttribute("totalPage", pageInfo.getTotalPages());
		
		return "ProductList";
	}
	
	
	
	// 상품 조회
	@GetMapping("/ProductDetail")
	public void productDetail(Model model, @RequestParam Long id) throws Exception {
		Optional<Product> productO = productService.detail(id);
		Files filesO = filesService.filesView(id);
		model.addAttribute("file",  filesO);
		model.addAttribute("product", productO.get());
	}
	
	
	// 상품 수정
	@GetMapping("/productModify")
	public String productModify(Model model, @RequestParam Long id) throws Exception{
		Optional<Product> productO = productService.detail(id);
		Files filesO = filesService.filesView(id);
		model.addAttribute("product", productO.get());
		model.addAttribute("file",  filesO);
		
		return "ModifyProduct";
	}
	// 상품 수정 처리
	@PostMapping("/productUpdate")
	public String productUpdate(Model model, ProductUpdateRequestDto dto, FilesSaveDto filedto, @RequestParam MultipartFile file, HttpServletRequest request) throws Exception {
		
		dto.setId(dto.getId());
		dto.setCategoryMain(dto.getCategoryMain());
		dto.setCategorySub(dto.getCategorySub());
		dto.setName(dto.getName());
		dto.setContent(dto.getContent());
		dto.setPrice(dto.getPrice());

		productService.update(dto);
		System.err.println("▶▶▶▶▶▶▶▶▶상품 수정됨");
		
		
		filesService.filesDelete(filedto.getProductId());
		System.err.println("▶▶▶▶▶▶▶▶▶파일 삭제됨");
		
		filedto.setFileUrl(ImgUploadUtil.uploadImg(file, request));
		filedto.setFileName(ImgUploadUtil.getFileName(file, request));
		filedto.setProductId(dto.getId());

		filesService.filesSave(filedto);

		return "redirect:/ProductList";
	}
	
	
	@GetMapping("/productDelete")
	public String productDelete(Model model, @RequestParam Long id) throws Exception{
		productService.delete(id);

		return "redirect:/ProductList";
	}
	
	
	
}
