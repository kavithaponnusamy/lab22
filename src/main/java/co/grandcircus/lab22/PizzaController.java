package co.grandcircus.lab22;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {

	@RequestMapping("/")
	public String showHome(Model model) {
		List<SpecialtyPizza> list = new ArrayList<>();
		SpecialtyPizza pizza1 = new SpecialtyPizza("Anchovy Lover's", 15);
		SpecialtyPizza pizza2 = new SpecialtyPizza("Paleo", 10);
		SpecialtyPizza pizza3 = new SpecialtyPizza("Dessert", 12);
		// SpecialtyPizza pizza4=new SpecialtyPizza("Special Pizza",120);
		list.add(pizza1);
		list.add(pizza2);
		list.add(pizza3);
		// list.add(pizza4);
		model.addAttribute("list", list);

		return "index";
	}

	@RequestMapping("/custom-form")
	public String showCustomForm(Model model) {

		List<String> toppings = new ArrayList<>();
		toppings.add("Pepperoni");
		toppings.add("Sausage");
		toppings.add("Mushroom");
		toppings.add("Olive");
		toppings.add("Greenpepper");
		toppings.add("Onion");
		toppings.add("Bananapepper");
		toppings.add("Anchovies");
		toppings.add("Pineapple");
		model.addAttribute("toppings", toppings);

		return "custom-form";
	}

	@RequestMapping("/review-form")
	public String showReviewForm() {

		return "review-form";
	}

	@RequestMapping("/specialty-result")
	public String showSpecialtyPizza(Model model, @RequestParam("name") String name,
			@RequestParam("price") double price) {

		SpecialtyPizza pizza = new SpecialtyPizza(name, price);
		model.addAttribute("pizza", pizza);
		model.addAttribute("name", name);
		model.addAttribute("price", price);
		return "specialty-result";
	}

	@RequestMapping("/rev-result")
	public String showReviewResult(Model model, @RequestParam("username1") String name,
			@RequestParam("comment") String comment, @RequestParam("rating") String rating) {

		model.addAttribute("username2", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		return "review-result";
	}

	@RequestMapping("/cus-result")
	public String showCustomResult(Model model, @RequestParam("size") String size,
			@RequestParam(value = "toppings", required = false) List<String> toppings,
			@RequestParam(value = "gluFree", required = false) String gluFree,
			@RequestParam("instructions") String instructions) {
		double price = 0;
		int topSize = toppings.size();
		String gf = gluFree.substring(gluFree.length() - 1);
		if (size.equalsIgnoreCase("small")) {
			price += 7 + (topSize * .5);
		} else if (size.equalsIgnoreCase("medium")) {
			price += 10 + (topSize * 1);
		} else {
			price += 12 + (topSize * 1.25);
		}
		if (gf.equalsIgnoreCase("y")) {
			price += 2;
		}
		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("gluFree", (gf.toUpperCase().equals("Y")) ? "Yes" : "No");
		model.addAttribute("instructions", instructions);
		model.addAttribute("price", price);

		return "custom-result";
	}

}
