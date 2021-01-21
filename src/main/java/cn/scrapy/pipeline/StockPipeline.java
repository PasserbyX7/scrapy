package cn.scrapy.pipeline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.scrapy.entity.Stock;
import cn.scrapy.service.StockService;
import lombok.extern.slf4j.Slf4j;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Slf4j
@Component
public class StockPipeline implements PageModelPipeline<Stock> {

    @Autowired
    private StockService stockService;

    @Override
    public void process(Stock stock, Task task) {
        log.info("save Stock：{}", stock.toString());
        stockService.saveOrUpdate(stock);
    }

}
