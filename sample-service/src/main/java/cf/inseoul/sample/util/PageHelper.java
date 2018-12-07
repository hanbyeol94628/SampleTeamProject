package cf.inseoul.sample.util;

import cf.inseoul.sample.service.ProductService;

public class PageHelper {

	private int nextPage;
	private int prevPage;
	private int lastPage;
	private int startPage;
	
	private ProductService productService;
	
	public PageHelper() {};
	
	public int getNextPage(int startPage, int size) {
		return startPage + size;
	}
	
	public int getPrevPage(int startPage, int size) {
		return startPage - size;
	}
	
	public int getLastPage(int page, int size) {
		int endPage = (int) (Math.ceil(page) / (double) size * size);
		int tempEndPage = (int) (Math.ceil(productService.count() / (double)size));
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		return endPage;
	}
	
	public int getStartPage(int size, int lastPage) {
		return (lastPage - size) + 1;
	}
}
