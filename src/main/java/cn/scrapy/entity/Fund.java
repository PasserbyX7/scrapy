package cn.scrapy.entity;

import java.io.Serializable;
import java.time.LocalDate;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import cn.scrapy.formatter.LocalDateFormatter;
import lombok.Data;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.Formatter;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@Data
@TableName
@TargetUrl("https://qieman.com/funds/\\d+")
public class Fund implements AfterExtractor, Serializable {

    private static final long serialVersionUID = -3204000604418879897L;
    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 基金经理id
     */
    @ExtractBy("//*[@id='app']/div[4]/div[2]/div/div/div/div[2]/div[2]/section[1]/div/p/a/regex('\\d+')")
    private Long fundManagerId;
    /**
     * 基金名
     */
    @ExtractBy("//*[@id='app']/div[4]/div[2]/div/div/div/div[1]/h1/text()")
    private String name;
    /**
     * 最大回撤
     */
    @ExtractBy("//*[@id='app']/div[4]/div[2]/div/div/div/div[2]/div[1]/section[1]/div/div[3]/div/span/text()")
    private Double drawdown;
    /**
     * 夏普比率
     */
    @ExtractBy("//*[@id='app']/div[4]/div[2]/div/div/div/div[2]/div[1]/section[1]/div/div[4]/span[2]/text()")
    private Double sharpeRatio;
    /**
     * 波动率
     */
    @ExtractBy("//*[@id='app']/div[4]/div[2]/div/div/div/div[2]/div[1]/section[1]/div/div[5]/span[2]/text()")
    private Double volatility;
    /**
     * 成立时间
     */
    @Formatter(formatter = LocalDateFormatter.class)
    @ExtractBy("//*[@id='app']/div[4]/div[2]/div/div/div/div[1]/div[1]/div/regex('\\d+-\\d+-\\d+')")
    private LocalDate createTime;

    @Override
    public void afterProcess(Page page) {
        id = Long.parseLong(page.getRequest().getUrl().substring(25));
    }

}
