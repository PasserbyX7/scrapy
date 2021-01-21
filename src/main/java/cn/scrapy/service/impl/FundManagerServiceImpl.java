package cn.scrapy.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.stereotype.Service;

import cn.scrapy.dao.FundManagerDao;
import cn.scrapy.entity.FundManager;
import cn.scrapy.service.FundManagerService;

@Service
public class FundManagerServiceImpl extends ServiceImpl<FundManagerDao, FundManager> implements FundManagerService {
}