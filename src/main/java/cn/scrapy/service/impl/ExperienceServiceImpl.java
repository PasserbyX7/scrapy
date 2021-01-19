package cn.scrapy.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.stereotype.Service;

import cn.scrapy.dao.ExperienceDao;
import cn.scrapy.entity.Experience;
import cn.scrapy.service.ExperienceService;

@Service
public class ExperienceServiceImpl extends ServiceImpl<ExperienceDao, Experience> implements ExperienceService {
}
