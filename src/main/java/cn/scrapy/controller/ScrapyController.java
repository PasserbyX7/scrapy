package cn.scrapy.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.scrapy.api.R;
import cn.scrapy.entity.Experience;
import cn.scrapy.entity.Fund;
import cn.scrapy.entity.FundManager;
import cn.scrapy.pipeline.ExperiencePipeline;
import cn.scrapy.pipeline.FundManagerPipeline;
import cn.scrapy.pipeline.FundPipeline;
import cn.scrapy.scrapy.SeleniumDownloader;
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

    @GetMapping
    public R<Void> scrapy() throws IOException {
        // @formatter:off
        OOSpider.create(site)
                        .addPageModel(fundPipeline, Fund.class)
                        .addPageModel(fundManagerPipeline, FundManager.class)
                        .addPageModel(experiencePipeline, Experience.class)
                        .setDownloader(new SeleniumDownloader())
                        .addUrl(getUrls())
                        .thread(5)
                        .runAsync();
        // @formatter:on
        return R.ok();
    }

    private String[] getUrls() throws IOException {
        Path path = Paths.get("C:\\Users\\75663\\Desktop\\fund.txt");
        // @formatter:off
        return Files.readAllLines(path)
                            .stream()
                            .filter(line -> !line.startsWith("(01-15)"))
                            .map(str -> str.substring(str.indexOf("(") + 1, str.indexOf("(") + 7))
                            .map(e -> "https://qieman.com/funds/" + e)
                            .toArray(String[]::new);
        // @formatter:on
    }
}