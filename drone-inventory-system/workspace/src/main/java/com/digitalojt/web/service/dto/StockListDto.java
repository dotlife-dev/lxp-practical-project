package com.digitalojt.web.service.dto;

/**
 * 在庫一覧画面 サービスDTO
 * 
 * @author kijima
 *
 */
public class StockListDto {
    
	/**
	 * 商品ID
	 */
	private String productId;

	/**
	 * 商品名
	 */
	private String name;

	/**
	 * 商品分類
	 */
	private String classification;

	/**
	 * 商品説明
	 */
	private String description;

	/**
	 * 商品価格
	 */
	private int price;

	/**
	 * 商品個数
	 */
	private String amount;

	/**
	 * 商品保管ID
	 */
	private String placeId;

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getPlaceId() {
		return placeId;
	}

	public void setPlaceId(String placeId) {
		this.placeId = placeId;
	}
}
