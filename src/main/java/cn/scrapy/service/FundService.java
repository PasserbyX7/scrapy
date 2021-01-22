package cn.scrapy.service;

import java.io.IOException;
import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;

import cn.scrapy.dto.FundDTO;
import cn.scrapy.entity.Fund;

public interface FundService extends IService<Fund> {

	List<FundDTO> listFundDTO(double drawdown,int fundTime,int fundCnt,int managerTradingTime,int managerWorkingTime);
    String[] getFundUrls() throws IOException;
	String[] getFundStockRelationUrls();
}
