package cn.scrapy.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.stereotype.Service;

import cn.scrapy.dao.FundDao;
import cn.scrapy.dto.FundDTO;
import cn.scrapy.entity.Fund;
import cn.scrapy.service.FundService;

@Service
public class FundServiceImpl extends ServiceImpl<FundDao, Fund> implements FundService {

    @Override
    public List<FundDTO> listFundDTO() {
        return baseMapper.listFundDTO();
    }
}
