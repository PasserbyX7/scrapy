package cn.scrapy.entity;

import java.io.Serializable;
import java.time.LocalDate;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import us.codecraft.webmagic.Page;

import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@Data
@TableName
@TargetUrl("https://qieman.com/funds/manager/\\d+")
@ExtractBy(value = "//*[@id='app']/div[4]/div[2]/div/div/div/div/div[3]/div/div/div/div/div/div/div/table/tbody/tr", multi = true)
public class Experience implements AfterExtractor, Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
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
    private String ranking;
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
    /**
     * 是否启用
     */
    @TableField(exist = false)
    private Boolean enabled;

    @Override
    public void afterProcess(Page page) {
        var info = name.trim().replaceAll(" +", " ").split(" ");
        if (info.length < 5 || !info[3].equals("至今")) {
            enabled = false;
            return;
        }
        fundManagerId = Long.parseLong(page.getRequest().getUrl().substring(33));
        name = info[0];
        startTime = LocalDate.parse(info[1]);
        ranking = info[4];
        enabled = true;
    }
}
