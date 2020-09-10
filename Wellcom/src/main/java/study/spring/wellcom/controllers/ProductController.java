package study.spring.wellcom.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import study.spring.wellcom.model.Product;
import study.spring.wellcom.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;

	@RequestMapping(value = "/jsp/product_assemble.do")
	public String assemble(Model model, @RequestParam(value = "data", defaultValue = "0") int param) {
		Product input = new Product();
		input.setId(param);
		
		List<Product> item = null;
		try {
			item = productService.getProductAssemble(input);
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		model.addAttribute("item", item);
		return "/jsp/assemble";
	}

	@RequestMapping(value = "/jsp/product.do")
	public String product(Model model, 
			@RequestParam(value = "data", required = false) String category,
			@RequestParam(value = "selectItem", required = false) String selectItem) {

		String selectItemArray[] = null;
		if (!"".equals(selectItem) && selectItem != null) {
			selectItemArray = selectItem.split(",", -1);
		}
		Map<String, Object> searchCondition = new HashMap<String, Object>();
		System.out.println(category);
		searchCondition.put("brand", selectItemArray);
		Product input = new Product();
		List<Product> output = null;
		List<Product> select = null;
		List<Product> link = null;
		
		input.setCategory(category);
		try {
			output = productService.getProductList(searchCondition);
			if (!searchCondition.containsValue(null)) {
				select = productService.getProductChecked(searchCondition);
			}
			if (category!=null) {
				link = productService.getProductList(input);	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("link", link);
		model.addAttribute("output", output);
		model.addAttribute("select", select);
		return "/jsp/product";
	}

	// product -> product_info 데이터 전송 컨트롤러
	@RequestMapping(value = "/jsp/product_info.do")
	public String product_info(Model model, @RequestParam(value = "data", defaultValue = "0") int param) {
		Product input = new Product();
		Product output = null;
		List<Product> review_list = null;

		input.setId(param);

		try {
			review_list = productService.getProductReview(input);
			output = productService.getProductItem(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("review_list", review_list);
		return "/jsp/product_info";
	}
}
