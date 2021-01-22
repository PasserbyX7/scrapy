package cn.scrapy.pipeline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.scrapy.entity.FundStockRelation;
import cn.scrapy.service.FundStockRelationService;
import cn.scrapy.service.StockService;
import lombok.extern.slf4j.Slf4j;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Slf4j
@Component
public class FundStockRelationPipeline implements PageModelPipeline<FundStockRelation> {

    @Autowired
    private FundStockRelationService fundStockRelationService;

    @Autowired
    private StockService stockService;

    @Override
    public void process(FundStockRelation fundStockRelation, Task task) {
        if (fundStockRelation.getStockName() == null)
            return;
        var stock = stockService.getByName(fundStockRelation.getStockName());
        if (stock == null)
            return;
        fundStockRelation.setStockId(stock.getId());
        log.info("save FundStockRelation：{}", fundStockRelation.toString());
        fundStockRelationService.save(fundStockRelation);
    }

}
