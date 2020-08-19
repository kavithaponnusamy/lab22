package co.grandcircus.lab22;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {

	@RequestMapping("/index")
	public String showHome() {
		return "index" ;
	}

	@RequestMapping("/custom-form")
	public String showCustomForm() {

		return "custom-form";
	}
	@RequestMapping("/review-form")
	public String showReviewForm() {

		return "review-form";
	}
	@RequestMapping("/specialty-result")
	public String showSpecialtyPizza(Model model, @RequestParam("name") String name, @RequestParam("price") double price) {

			model.addAttribute("name", name);
			model.addAttribute("price", price);
				return "specialty-result";
	}
	@RequestMapping("/rev-result")
	public String showReviewResult(Model model, @RequestParam("username1") String name, @RequestParam("comment") String comment, @RequestParam("rating") String rating) {

			model.addAttribute("username2", name);
			model.addAttribute("comment", comment);
			model.addAttribute("rating", rating);
				return "review-result";
	}
	@RequestMapping("/cus-result")
	public String showCustomResult(Model model, @RequestParam("size") String size, @RequestParam("toppings") int toppings, @RequestParam(value="gluFree",required=false) String gluFree,@RequestParam("instructions") String instructions) {
			double price=0;
			String gf=gluFree.substring(gluFree.length()-1);
			if(size.equalsIgnoreCase("small")) {
				price+=7+(toppings*.5);	
			}else if(size.equalsIgnoreCase("medium")) {
				price+=10+(toppings*1);	
			}else {
				price+=12+(toppings*1.25);
			}if(gf.equalsIgnoreCase("y")) {
				price+=2;
				}
			
			model.addAttribute("size", size);
			model.addAttribute("toppings", toppings);
			model.addAttribute("gluFree", gf.toUpperCase());
			model.addAttribute("instructions", instructions);
			model.addAttribute("price", price);
			
				return "custom-result";
		}
	


}
