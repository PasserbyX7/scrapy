package cn.scrapy.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.stereotype.Service;

import cn.scrapy.dao.FundDao;
import cn.scrapy.entity.Fund;
import cn.scrapy.service.FundService;

@Service
public class FundServiceImpl extends ServiceImpl<FundDao, Fund> implements FundService {
}
