package cn.scrapy.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;

import cn.scrapy.entity.FundStockRelation;

public interface FundStockRelationService extends IService<FundStockRelation> {

	List<FundStockRelation> listByFundId(Long id);
    
}
