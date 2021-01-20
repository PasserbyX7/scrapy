package cn.scrapy;

import java.time.LocalDate;

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
import cn.scrapy.service.ExperienceService;
import cn.scrapy.service.FundManagerService;
import cn.scrapy.service.FundService;
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

    @Test
    void contextLoads() {
        OOSpider.create(site)
                        .addPageModel(experiencePipeline, Experience.class)
                        .setDownloader(new SeleniumDownloader())
                        .addUrl(getUrls())
                        .thread(5)
                        .run();
    }

    private String[] getUrls() {
        var funds = fundManagerService.list();
        return null;
        // return funds.stream().map(e -> "https://qieman.com/funds/manager/"+e.getId().toString()).toArray(String[]::new);
    }

    @Test
void test(){
    var e=new Experience();
    e.setId(null);
    e.setFundManagerId(388L);
    e.setName("test");
    e.setStartTime(LocalDate.parse("2020-02-20"));
    e.setRanking("1649/3145");
    e.setTenureReturn(34.69);
    e.setEnabled(true);
    experienceService.save(e);
}

}
