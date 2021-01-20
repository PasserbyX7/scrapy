package cn.scrapy.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;

import cn.scrapy.dto.FundDTO;
import cn.scrapy.entity.Fund;

public interface FundService extends IService<Fund> {

	List<FundDTO> listFundDTO();

}
