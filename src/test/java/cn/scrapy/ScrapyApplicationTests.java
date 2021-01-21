package cn.scrapy;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Arrays;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.jsoup.nodes.Entities;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import cn.scrapy.entity.Experience;
import cn.scrapy.entity.Fund;
import cn.scrapy.entity.FundManager;
import cn.scrapy.entity.FundStockRelation;
import cn.scrapy.entity.Stock;
import cn.scrapy.pipeline.ExperiencePipeline;
import cn.scrapy.pipeline.FundManagerPipeline;
import cn.scrapy.pipeline.FundPipeline;
import cn.scrapy.pipeline.FundStockRelationPipeline;
import cn.scrapy.pipeline.StockPipeline;
import cn.scrapy.scrapy.SeleniumDownloader;
import cn.scrapy.service.ExperienceService;
import cn.scrapy.service.FundManagerService;
import cn.scrapy.service.FundService;
import cn.scrapy.service.FundStockRelationService;
import cn.scrapy.service.StockService;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.ConsolePageModelPipeline;
import us.codecraft.webmagic.model.OOSpider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;

@SpringBootTest
class ScrapyApplicationTests {
    private Site site = Site.me().setTimeOut(3000).setRetryTimes(3).setSleepTime(1000);
    @Autowired
    private FundService fundService;
    @Autowired
    private FundManagerService fundManagerService;
    @Autowired
    private FundPipeline fundPipeline;
    @Autowired
    private FundManagerPipeline fundManagerPipeline;
    @Autowired
    private ExperiencePipeline experiencePipeline;
    @Autowired
    private ExperienceService experienceService;
    @Autowired
    private StockService stockService;
    @Autowired
    private StockPipeline stockPipeline;
    @Autowired
    private FundStockRelationService fundStockRelationService;
    @Autowired
    private FundStockRelationPipeline fundStockRelationPipeline;

    @Test
    void contextLoads() {
        OOSpider.create(site).addPageModel(fundPipeline, Fund.class)
                .addPageModel(fundManagerPipeline, FundManager.class).addPageModel(experiencePipeline, Experience.class)
                .setDownloader(new SeleniumDownloader())
                // .addUrl(getUrls())
                .addUrl("https://qieman.com/funds/110022").thread(5).run();
    }

    private String[] getUrls() {
        var funds = fundManagerService.list();
        return null;
        // return funds.stream().map(e ->
        // "https://qieman.com/funds/manager/"+e.getId().toString()).toArray(String[]::new);
    }

    @Test
    void stockTest() {
        // stockService.saveStocks();
        OOSpider.create(site)
                        .addPageModel(stockPipeline, Stock.class)
                        .addUrl(stockService.getStockUrls())
                        .thread(10)
                        .run();
    }
    @Test
    void fundStockRelationTest(){
        var f=new FundStockRelation();
        f.setId(1L);
        f.setFundId(1L);
        f.setPercent(1.1);
        f.setStockId("stockId");
        f.setStockName("stockName");
        fundStockRelationService.save(f);
        // OOSpider.create(site)
        //                 .addPageModel(fundStockRelationPipeline, FundStockRelation.class)
        //                 .addUrl(fundService.getFundStockRelationUrls())
        //                 .thread(5)
        //                 .run();
    }
}
