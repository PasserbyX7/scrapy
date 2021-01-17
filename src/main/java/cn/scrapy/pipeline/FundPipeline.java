package cn.scrapy.pipeline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.scrapy.entity.Fund;
import cn.scrapy.service.FundService;
import lombok.extern.slf4j.Slf4j;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Slf4j
@Component
public class FundPipeline implements PageModelPipeline<Fund> {

    @Autowired
    private FundService fundService;
    @Override
    public void process(Fund fund, Task task) {
        log.info("save fund：{}",fund.toString());
        fundService.saveOrUpdate(fund);
    }

}
