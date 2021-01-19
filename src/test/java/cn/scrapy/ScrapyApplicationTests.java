package cn.scrapy;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import cn.scrapy.entity.Experience;
import cn.scrapy.entity.Fund;
import cn.scrapy.entity.FundManager;
import cn.scrapy.pipeline.ExperiencePipeline;
import cn.scrapy.pipeline.FundManagerPipeline;
import cn.scrapy.pipeline.FundPipeline;
import cn.scrapy.scrapy.SeleniumDownloader;
import cn.scrapy.service.FundService;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.OOSpider;

@SpringBootTest
class ScrapyApplicationTests {
    private Site site = Site.me().setTimeOut(3000).setRetryTimes(3).setSleepTime(1000);
    @Autowired
    private FundService fundService;
    @Autowired
    private FundPipeline fundPipeline;
    @Autowired
    private FundManagerPipeline fundManagerPipeline;
    @Autowired
    private ExperiencePipeline experiencePipeline;

    @Test
    void contextLoads() {
        OOSpider.create(Site.me())
                        .addPageModel(experiencePipeline, Experience.class)
                        .setDownloader(new SeleniumDownloader())
                        .addUrl("https://qieman.com/funds/manager/388")
                        .thread(1)
                        .run();
        // String url = "https://qieman.com/funds/000136";
        // String url = "https://qieman.com/funds/manager/865";
        // @formatter:off
        // OOSpider.create(site)
        //         .addPageModel(fundPipeline, Fund.class)
        //         .addPageModel(fundManagerPipeline, FundManager.class)
        //         .setDownloader(new SeleniumDownloader())
        //         .addUrl(url)
        //         .addUrl(getUrls())
        //         .thread(1)
        //         .run();
        // @formatter:on
    }

    private String[] getUrls() {
        return null;
        // var funds = fundService.list(Wrappers.<Fund>lambdaQuery().isNull(Fund::getCreateTime));
        // return funds.stream().map(e -> e.getId().toString()).toArray(String[]::new);
    }

}
