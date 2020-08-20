package co.grandcircus.lab22;

public class SpecialtyPizza {
	private String name;
	private double price;
	
	public SpecialtyPizza() {
		super();
	}
	public SpecialtyPizza(String name, double price) {
		super();
		this.name = name;
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "SpecialtyPizza [name=" + name + ", price=" + price + "]";
	}
	
	

}
