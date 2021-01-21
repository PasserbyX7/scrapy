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
@TargetUrl("http://fund.eastmoney.com/\\d+.html")
@ExtractBy(value = "//*[@id='position_shares']/div[1]/table/tbody/tr", multi = true)
public class FundStockRelation implements AfterExtractor, Serializable {

    private static final long serialVersionUID = 1366858321945761031L;
    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 基金id
     */
    private Long fundId;
    /**
     * 股票id
     */
    private String stockId;
    /**
     * 股票名
     */
    @ExtractBy("/html/body/a[1]/text()")
    private String stockName;
    /**
     * 基金持仓比
     */
    @ExtractBy("/html/body/span/text()/regex('\\d+.\\d+')")
    private Double percent;

    @Override
    public void afterProcess(Page page) {
        fundId = Long.parseLong(page.getRequest().getUrl().substring(26,32));
    }
}
