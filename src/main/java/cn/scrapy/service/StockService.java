package cn.scrapy.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;

import cn.scrapy.dto.StockDTO;
import cn.scrapy.entity.Stock;

public interface StockService extends IService<Stock> {
    void saveStocks();
    Stock getByName(String name);
    String[] getStockUrls();
	List<StockDTO> listByFundId(Long id);
}
