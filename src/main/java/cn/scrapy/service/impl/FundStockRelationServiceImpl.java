package cn.scrapy.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.stereotype.Service;

import cn.scrapy.dao.FundStockRelationDao;
import cn.scrapy.entity.FundStockRelation;
import cn.scrapy.service.FundStockRelationService;

@Service
public class FundStockRelationServiceImpl extends ServiceImpl<FundStockRelationDao, FundStockRelation>
        implements FundStockRelationService {

    @Override
    public List<FundStockRelation> listByFundId(Long id) {
        return list(Wrappers.<FundStockRelation>lambdaQuery().eq(FundStockRelation::getFundId, id));
    }

}
