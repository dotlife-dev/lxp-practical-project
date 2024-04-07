package com.digitalojt.web.entity;

import java.sql.Timestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

/**
 * 在庫情報Entity
 * 
 * @author kijima
 *
 */
@Data
@Entity
public class StockInfo {

    /**
	 * 在庫ID
	 */
	@Id
	public String stockId;

	/**
	 * 在庫名
	 */
	public String name;

	/**
	 * 在庫分類
	 */
	public String classification;

	/**
	 * 在庫説明
	 */
	public String description;

	/**
	 * 在庫個数
	 */
	public String amount;

	/**
	 * 在庫保管ID
	 */
	public String placeId;

	/**
	 * 論理削除フラグ
	 */
	public String deleteFlag;

	/**
	 * 更新日
	 */
	public Timestamp updateDate;

	/**
	 * 登録日
	 */
	public Timestamp createDate;
}
