package cn.scrapy.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@Data
@TableName
@TargetUrl("https://eniu.com/gu/\\w+")
public class Stock implements AfterExtractor, Serializable {

    private static final long serialVersionUID = 3950535504563811356L;
    /**
     * 主键
     */
    @TableId
    private String id;
    /**
     * 股票名
     */
    private String name;
    /**
     * 市盈率
     */
    @ExtractBy("/html/body/div[4]/div/div[1]/div/div[1]/div/div[2]/div[1]/p[2]/a/text()")
    private Double Pe;
    /**
     * 市净率
     */
    @ExtractBy("/html/body/div[4]/div/div[1]/div/div[1]/div/div[2]/div[1]/p[3]/a/text()")
    private Double Pb;

    @Override
    public void afterProcess(Page page) {
        id = page.getRequest().getUrl().substring(20);
    }
}
