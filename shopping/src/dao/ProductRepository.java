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
		
		//whey ����ƾ ����
		// whey ����ƾ�� Category�� 1�̴�.
		Product whey1 = new Product("whey001", "���� ����ƾ", 50900);
		whey1.setDescription("100g �� ���� 1740kcal, ���� 7.5g, ź��ȭ�� 4.0g, �ܹ��� 82g, ���� 0.5g, L-���� 10g, L-�̼ҷ��� 6.7g");
		whey1.setCategory(1);
		whey1.setManufacturer("Honest ����ƾ");
		whey1.setUnitsInStock(1000);
		whey1.setCondition("Hot");
		whey1.setFilename("1.jpg");

		Product whey2 = new Product("whey002", "ISOLATE ����ƾ", 45900);
		whey2.setDescription("100g �� ���� 1548kcal, ���� 0.3g, ź��ȭ�� 2.5g, �ܹ��� 90g, ���� 0.5g, L-���� 9.7g, L-�̼ҷ��� 5.4g");
		whey2.setCategory(1);
		whey2.setManufacturer("Honest ����ƾ");
		whey2.setUnitsInStock(1000);
		whey2.setCondition("New");
		whey2.setFilename("2.jpg");

		Product whey3 = new Product("whey003", "BLACK ����ƾ", 72500);
		whey3.setDescription("100g �� ���� 1646kcal, ���� 6.0g, ź��ȭ�� 1.9g, �ܹ��� 87g, ���� 0.3g, L-���� 6.8g, L-�̼ҷ��� 4.3g");
		whey3.setCategory(1);
		whey3.setManufacturer("Honest ����ƾ");
		whey3.setUnitsInStock(1000);
		whey3.setCondition("New");
		whey3.setFilename("3.jpg");
		
		Product whey4 = new Product("whey004", "GLOD ����ƾ", 47900);
		whey4.setDescription("100g �� ���� 1440kcal, ���� 5.5g, ź��ȭ�� 2.8g, �ܹ��� 85g, ���� 0.2g, L-���� 8.4g, L-�̼ҷ��� 7.6g");
		whey4.setCategory(1);
		whey4.setManufacturer("Honest ����ƾ");
		whey4.setUnitsInStock(1000);
		whey4.setCondition("New");
		whey4.setFilename("4.jpg");
		
		Product whey5 = new Product("whey005", "LOW SUGAR ����ƾ", 65900);
		whey5.setDescription("100g �� ���� 1740kcal, ���� 1.8g, ź��ȭ�� 3.5g, �ܹ��� 79g, ���� 0.3g, L-���� 9.9g, L-�̼ҷ��� 8.7g");
		whey5.setCategory(1);
		whey5.setManufacturer("Honest ����ƾ");
		whey5.setUnitsInStock(1000);
		whey5.setCondition("New");
		whey5.setFilename("5.jpg");
		
		Product whey6 = new Product("whey006", "PACK ����ƾ", 50400);
		whey6.setDescription("100g �� ���� 1340kcal, ���� 5.9g, ź��ȭ�� 4.8g, �ܹ��� 74g, ���� 0.4g, L-���� 8.9g, L-�̼ҷ��� 8.0g");
		whey6.setCategory(1);
		whey6.setManufacturer("Honest ����ƾ");
		whey6.setUnitsInStock(1000);
		whey6.setCondition("New");
		whey6.setFilename("6.jpg");

		listOfProducts.add(whey1);
		listOfProducts.add(whey2);
		listOfProducts.add(whey3);
		listOfProducts.add(whey4);
		listOfProducts.add(whey5);
		listOfProducts.add(whey6);
		//whey����ƾ ��
		
		
		//gainer ����ƾ ����
		//gainer ����ƾ�� ī�װ��� 2��.
		Product gainer1 = new Product("gainer001", "���� ����ƾ", 76500);
		gainer1.setDescription("100g �� ���� 2402kcal, ���� 46g, ź��ȭ�� 12g, �ܹ��� 30g, ���� 0g, ��Ÿ��E 3.6mg, ���׳׽� 180mg");
		gainer1.setCategory(2);
		gainer1.setManufacturer("Honest ����ƾ");
		gainer1.setUnitsInStock(1000);
		gainer1.setCondition("New");
		gainer1.setFilename("7.jpg");

		Product gainer2 = new Product("gainer002", "���� ����ƾ", 47500);
		gainer2.setDescription("100g �� ���� 2564kcal, ���� 49g, ź��ȭ�� 14g, �ܹ��� 33g, ���� 0.2g, ��Ÿ��E 3.9mg, ���׳׽� 188mg");
		gainer2.setCategory(2);
		gainer2.setManufacturer("Honest ����ƾ");
		gainer2.setUnitsInStock(1000);
		gainer2.setCondition("Hot");
		gainer2.setFilename("8.jpg");

		Product gainer3 = new Product("gainer003", "Half ����ƾ", 49800);
		gainer3.setDescription("100g �� ���� 2332kcal, ���� 42g, ź��ȭ�� 10g, �ܹ��� 28g, ���� 0g, ��Ÿ��E 3.3mg, ���׳׽� 174mg");
		gainer3.setCategory(2);
		gainer3.setManufacturer("Honest ����ƾ");
		gainer3.setUnitsInStock(1000);
		gainer3.setCondition("New");
		gainer3.setFilename("9.jpg");

		Product gainer4 = new Product("gainer004", "EXTREME ����ƾ", 39800);
		gainer4.setDescription("100g �� ���� 2460kcal, ���� 47g, ź��ȭ�� 13g, �ܹ��� 32g, ���� 0.1g, ��Ÿ��E 3.8mg, ���׳׽� 183mg");
		gainer4.setCategory(2);
		gainer4.setManufacturer("Honest ����ƾ");
		gainer4.setUnitsInStock(1000);
		gainer4.setCondition("New");
		gainer4.setFilename("10.jpg");

		Product gainer5 = new Product("gainer005", "RED ����ƾ", 88900);
		gainer5.setDescription("100g �� ���� 2700kcal, ���� 52g, ź��ȭ�� 18g, �ܹ��� 40g, ���� 0.5g, ��Ÿ��E 5.1mg, ���׳׽� 202mg");
		gainer5.setCategory(2);
		gainer5.setManufacturer("Honest ����ƾ");
		gainer5.setUnitsInStock(1000);
		gainer5.setCondition("New");
		gainer5.setFilename("11.jpg");

		Product gainer6 = new Product("gainer006", "PEACH ����ƾ", 54200);
		gainer6.setDescription("100g �� ���� 2152kcal, ���� 40g, ź��ȭ�� 8.8g, �ܹ��� 27g, ���� 0.1g, ��Ÿ��E 3.1mg, ���׳׽� 169mg");
		gainer6.setCategory(2);
		gainer6.setManufacturer("Honest ����ƾ");
		gainer6.setUnitsInStock(1000);
		gainer6.setCondition("New");
		gainer6.setFilename("12.jpg");

		listOfProducts.add(gainer1);
		listOfProducts.add(gainer2);
		listOfProducts.add(gainer3);
		listOfProducts.add(gainer4);
		listOfProducts.add(gainer5);
		listOfProducts.add(gainer6);
		//gainer����ƾ ��
		
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
