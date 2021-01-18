package cn.scrapy.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Arrays;

import com.baomidou.mybatisplus.annotation.TableName;

import cn.scrapy.scrapy.SeleniumDownloader;
import lombok.Data;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.ConsolePageModelPipeline;
import us.codecraft.webmagic.model.OOSpider;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;
import us.codecraft.webmagic.model.annotation.ExtractBy.Source;

@Data
@TableName
@TargetUrl("https://qieman.com/funds/manager/\\d+")
@ExtractBy(value = "//*[@id='app']/div[4]/div[2]/div/div/div/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr", multi = true)
public class Experience implements AfterExtractor, Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 主键
     */
    private Long id;
    /**
     * 基金经理id
     */
    private Long fundManagerId;
    /**
     * 基金名
     */
    @ExtractBy("/html/body/text()")
    private String name;
    /**
     * 开始时间
     */
    private LocalDate startTime;
    /**
     * 同期排名
     */
    private String rank;
    /**
     * 任期回报
     */
    @ExtractBy("//*span[1]/text()")
    private Double tenureReturn;
    /**
     * 同期大盘
     */
    @ExtractBy("//*span[2]/text()")
    private Double tenureMarket;

    @Override
    public void afterProcess(Page page) {
        var info = name.trim().replaceAll(" +", " ").split(" ");
        if (info.length < 5 || !info[3].equals("至今")){
            page.setSkip(true);
            return;
        }
        name = info[0];
        startTime = LocalDate.parse(info[1]);
        rank = info[4];
    }

    public static void main(String[] args) {
        // String str = " 华商恒益稳健混合 2020-02-20 / 至今 1630/3156";
        // var info = str.trim().replaceAll(" +", " ").split(" ");
        // System.out.println(Arrays.toString(info));
        // System.out.println(Arrays.toString(info.split(" ")));
        OOSpider.create(Site.me()).addPageModel(new ConsolePageModelPipeline(), Experience.class)
                .setDownloader(new SeleniumDownloader()).addUrl("https://qieman.com/funds/manager/388").thread(1).run();
    }
}
