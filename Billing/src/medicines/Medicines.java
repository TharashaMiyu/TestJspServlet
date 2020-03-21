package medicines;

import java.sql.Date;

public class Medicines {


	protected String name;
	protected String category;
	protected String storedBoxes;
	protected double pharchaseprice;
	protected double selingPrice;
	protected int quantity;
	protected String genericName;
	protected String company;

	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStoredBoxes() {
		return storedBoxes;
	}
	public void setStoredBoxes(String storedBoxes) {
		this.storedBoxes = storedBoxes;
	}
	public double getPharchaseprice() {
		return pharchaseprice;
	}
	public void setPharchaseprice(double pharchaseprice) {
		this.pharchaseprice = pharchaseprice;
	}
	public double getSelingPrice() {
		return selingPrice;
	}
	public void setSelingPrice(double selingPrice) {
		this.selingPrice = selingPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getGenericName() {
		return genericName;
	}
	public void setGenericName(String genericName) {
		this.genericName = genericName;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	
	
	
}
