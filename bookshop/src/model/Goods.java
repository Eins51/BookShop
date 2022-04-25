package model;

public class Goods {
	private int id;
	private String name;
	private String cover;
	private String image1;
	private String image2;
	private float price;
	private String intro;
	private int stock;
	private Type type;
	private String book_review1;
	private String book_review2;
	private String book_review3;
	private String book_review4;
	
	private boolean isScroll;
	private boolean isHot;
	private boolean isNew;
	
	
	public boolean getIsScroll() {
		return isScroll;
	}
	public void setScroll(boolean isScroll) {
		this.isScroll = isScroll;
	}
	public boolean getIsHot() {
		return isHot;
	}
	public void setHot(boolean isHot) {
		this.isHot = isHot;
	}
	public boolean getIsNew() {
		return isNew;
	}
	public void setNew(boolean isNew) {
		this.isNew = isNew;
	}
	public void setTypeid(int typeid) {
		if(type==null) {
			type = new Type();
		}
		type.setId(typeid);
	}
	public void setTypename(String typename) {
		if(type==null) {
			type = new Type();
		}
		type.setName(typename);
	}
	public String getBook_review1() {
		return book_review1;
	}
	public void setBook_review1(String book_review1) {
		this.book_review1 = book_review1;
	}
	public String getBook_review2() {
		return book_review2;
	}
	public void setBook_review2(String book_review2) {
		this.book_review2 = book_review2;
	}
	public String getBook_review3() {
		return book_review3;
	}
	public void setBook_review3(String book_review3) {
		this.book_review3 = book_review3;
	}
	public String getBook_review4() {
		return book_review4;
	}
	public void setBook_review4(String book_review4) {
		this.book_review4 = book_review4;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", cover=" + cover + ", image1=" + image1 + ", image2=" + image2
				+ ", price=" + price + ", intro=" + intro + ", stock=" + stock + ", type=" + type + "]";
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
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Goods() {
		super();
	}
	public Goods(int id, String name, String cover, String image1, String image2, float price, String intro, int stock,
			Type type) {
		super();
		this.id = id;
		this.name = name;
		this.cover = cover;
		this.image1 = image1;
		this.image2 = image2;
		this.price = price;
		this.intro = intro;
		this.stock = stock;
		this.type = type;
	}
	
	
}
