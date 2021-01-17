package cn.scrapy.pipeline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.scrapy.entity.FundManager;
import cn.scrapy.service.FundManagerService;
import lombok.extern.slf4j.Slf4j;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Slf4j
@Component
public class FundManagerPipeline implements PageModelPipeline<FundManager> {

    @Autowired
    private FundManagerService fundManagerService;

    @Override
    public void process(FundManager fundManager, Task task) {
        log.info("save fundManager：{}", fundManager.toString());
        fundManagerService.saveOrUpdate(fundManager);
    }

}
