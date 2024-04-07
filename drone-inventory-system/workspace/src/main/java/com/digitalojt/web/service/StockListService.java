package com.digitalojt.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.digitalojt.web.repository.StockInfoRepository;
import com.digitalojt.web.service.dto.StockListDto;

/**
 * 在庫一覧画面 サービスクラス
 * 
 * @author kijima
 *
 */
@Service
public class StockListService {
    
    @Autowired
	private StockInfoRepository repository;

    /**
	 * 在庫一覧画面に表示するデータを一括取得
	 * 
	 * @return
	 */
	public List<StockListDto> getStockListData() {
        
		return null;
	}
}
