package cn.scrapy.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.scrapy.api.R;
import cn.scrapy.dto.FundDTO;
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
import cn.scrapy.service.FundService;
import cn.scrapy.service.StockService;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.OOSpider;

@RestController
@RequestMapping("/scrapy")
public class ScrapyController {

    private Site site = Site.me().setTimeOut(3000).setRetryTimes(3).setSleepTime(1000);

    @Autowired
    private FundPipeline fundPipeline;
    @Autowired
    private FundManagerPipeline fundManagerPipeline;
    @Autowired
    private ExperiencePipeline experiencePipeline;
    @Autowired
    private FundStockRelationPipeline fundStockRelationPipeline;
    @Autowired
    private StockPipeline stockPipeline;
    @Autowired
    private FundService fundService;
    @Autowired
    private StockService stockService;

    @GetMapping("/init")
    public R<Void> init() {
        // @formatter:off
        OOSpider.create(site)
                        .addPageModel(stockPipeline, Stock.class)
                        .addUrl(stockService.getStockUrls())
                        .thread(5)
                        .runAsync();
        // @formatter:on
        stockService.init();
        return R.ok();
    }

    @GetMapping("/start")
    public R<Void> scrapy() throws IOException {
        // @formatter:off
        OOSpider.create(site)
                        .addPageModel(fundPipeline, Fund.class)
                        .addPageModel(fundManagerPipeline, FundManager.class)
                        .addPageModel(experiencePipeline, Experience.class)
                        .setDownloader(new SeleniumDownloader())
                        .addUrl(fundService.getFundUrls())
                        .thread(5)
                        .run();
        OOSpider.create(site)
                        .addPageModel(fundStockRelationPipeline, FundStockRelation.class)
                        .addUrl(fundService.getFundStockRelationUrls())
                        .thread(5)
                        .run();
        // @formatter:on
        return R.ok();
    }

    // TODO 参数化构建
    @GetMapping("/list")
    public R<List<FundDTO>> list(double drawdown, int fundTime, int fundCnt, int managerTradingTime,
            int managerWorkingTime) {
        var result = fundService.listFundDTO(drawdown, fundTime, fundCnt, managerTradingTime, managerWorkingTime);
        return R.ok(result).setMsg("total：" + result.size());
    }

}