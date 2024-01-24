package dao;

import java.io.Serializable;

public class BagelBean implements Serializable{
	private int id;
	private String name;
	private int price;
	private String img_path;
	private String tag;
	
		
	public BagelBean(int id, String name, int price, String img_path, String tag) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.img_path = img_path;
		this.tag = tag;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}

	@Override
	public String toString() {
		return "BagalBean [id=" + id + ", name=" + name + ", price=" + price + ", img_path=" + img_path + ", tag=" + tag
				+ "]";
	}
	 
	
	
	
}
