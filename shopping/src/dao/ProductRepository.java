package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	} 


	public ProductRepository() {
		
		//whey 프로틴 시작
		// whey 프로틴은 Category가 1이다.
		Product whey1 = new Product("whey001", "블랜드 프로틴", 50900);
		whey1.setDescription("100g 당 열량 1740kcal, 지방 7.5g, 탄수화물 4.0g, 단백질 82g, 염분 0.5g, L-류신 10g, L-이소류신 6.7g");
		whey1.setCategory(1);
		whey1.setManufacturer("Honest 프로틴");
		whey1.setUnitsInStock(1000);
		whey1.setCondition("Hot");
		whey1.setFilename("1.jpg");

		Product whey2 = new Product("whey002", "ISOLATE 프로틴", 45900);
		whey2.setDescription("100g 당 열량 1548kcal, 지방 0.3g, 탄수화물 2.5g, 단백질 90g, 염분 0.5g, L-류신 9.7g, L-이소류신 5.4g");
		whey2.setCategory(1);
		whey2.setManufacturer("Honest 프로틴");
		whey2.setUnitsInStock(1000);
		whey2.setCondition("New");
		whey2.setFilename("2.jpg");

		Product whey3 = new Product("whey003", "BLACK 프로틴", 72500);
		whey3.setDescription("100g 당 열량 1646kcal, 지방 6.0g, 탄수화물 1.9g, 단백질 87g, 염분 0.3g, L-류신 6.8g, L-이소류신 4.3g");
		whey3.setCategory(1);
		whey3.setManufacturer("Honest 프로틴");
		whey3.setUnitsInStock(1000);
		whey3.setCondition("New");
		whey3.setFilename("3.jpg");
		
		Product whey4 = new Product("whey004", "GLOD 프로틴", 47900);
		whey4.setDescription("100g 당 열량 1440kcal, 지방 5.5g, 탄수화물 2.8g, 단백질 85g, 염분 0.2g, L-류신 8.4g, L-이소류신 7.6g");
		whey4.setCategory(1);
		whey4.setManufacturer("Honest 프로틴");
		whey4.setUnitsInStock(1000);
		whey4.setCondition("New");
		whey4.setFilename("4.jpg");
		
		Product whey5 = new Product("whey005", "LOW SUGAR 프로틴", 65900);
		whey5.setDescription("100g 당 열량 1740kcal, 지방 1.8g, 탄수화물 3.5g, 단백질 79g, 염분 0.3g, L-류신 9.9g, L-이소류신 8.7g");
		whey5.setCategory(1);
		whey5.setManufacturer("Honest 프로틴");
		whey5.setUnitsInStock(1000);
		whey5.setCondition("New");
		whey5.setFilename("5.jpg");
		
		Product whey6 = new Product("whey006", "PACK 프로틴", 50400);
		whey6.setDescription("100g 당 열량 1340kcal, 지방 5.9g, 탄수화물 4.8g, 단백질 74g, 염분 0.4g, L-류신 8.9g, L-이소류신 8.0g");
		whey6.setCategory(1);
		whey6.setManufacturer("Honest 프로틴");
		whey6.setUnitsInStock(1000);
		whey6.setCondition("New");
		whey6.setFilename("6.jpg");

		listOfProducts.add(whey1);
		listOfProducts.add(whey2);
		listOfProducts.add(whey3);
		listOfProducts.add(whey4);
		listOfProducts.add(whey5);
		listOfProducts.add(whey6);
		//whey프로틴 끝
		
		
		//gainer 프로틴 시작
		//gainer 프로틴은 카테고리가 2다.
		Product gainer1 = new Product("gainer001", "현미 프로틴", 76500);
		gainer1.setDescription("100g 당 열량 2402kcal, 지방 46g, 탄수화물 12g, 단백질 30g, 염분 0g, 비타민E 3.6mg, 마그네슘 180mg");
		gainer1.setCategory(2);
		gainer1.setManufacturer("Honest 프로틴");
		gainer1.setUnitsInStock(1000);
		gainer1.setCondition("New");
		gainer1.setFilename("7.jpg");

		Product gainer2 = new Product("gainer002", "땅콩 프로틴", 47500);
		gainer2.setDescription("100g 당 열량 2564kcal, 지방 49g, 탄수화물 14g, 단백질 33g, 염분 0.2g, 비타민E 3.9mg, 마그네슘 188mg");
		gainer2.setCategory(2);
		gainer2.setManufacturer("Honest 프로틴");
		gainer2.setUnitsInStock(1000);
		gainer2.setCondition("Hot");
		gainer2.setFilename("8.jpg");

		Product gainer3 = new Product("gainer003", "Half 프로틴", 49800);
		gainer3.setDescription("100g 당 열량 2332kcal, 지방 42g, 탄수화물 10g, 단백질 28g, 염분 0g, 비타민E 3.3mg, 마그네슘 174mg");
		gainer3.setCategory(2);
		gainer3.setManufacturer("Honest 프로틴");
		gainer3.setUnitsInStock(1000);
		gainer3.setCondition("New");
		gainer3.setFilename("9.jpg");

		Product gainer4 = new Product("gainer004", "EXTREME 프로틴", 39800);
		gainer4.setDescription("100g 당 열량 2460kcal, 지방 47g, 탄수화물 13g, 단백질 32g, 염분 0.1g, 비타민E 3.8mg, 마그네슘 183mg");
		gainer4.setCategory(2);
		gainer4.setManufacturer("Honest 프로틴");
		gainer4.setUnitsInStock(1000);
		gainer4.setCondition("New");
		gainer4.setFilename("10.jpg");

		Product gainer5 = new Product("gainer005", "RED 프로틴", 88900);
		gainer5.setDescription("100g 당 열량 2700kcal, 지방 52g, 탄수화물 18g, 단백질 40g, 염분 0.5g, 비타민E 5.1mg, 마그네슘 202mg");
		gainer5.setCategory(2);
		gainer5.setManufacturer("Honest 프로틴");
		gainer5.setUnitsInStock(1000);
		gainer5.setCondition("New");
		gainer5.setFilename("11.jpg");

		Product gainer6 = new Product("gainer006", "PEACH 프로틴", 54200);
		gainer6.setDescription("100g 당 열량 2152kcal, 지방 40g, 탄수화물 8.8g, 단백질 27g, 염분 0.1g, 비타민E 3.1mg, 마그네슘 169mg");
		gainer6.setCategory(2);
		gainer6.setManufacturer("Honest 프로틴");
		gainer6.setUnitsInStock(1000);
		gainer6.setCondition("New");
		gainer6.setFilename("12.jpg");

		listOfProducts.add(gainer1);
		listOfProducts.add(gainer2);
		listOfProducts.add(gainer3);
		listOfProducts.add(gainer4);
		listOfProducts.add(gainer5);
		listOfProducts.add(gainer6);
		//gainer프로틴 끝
		
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
