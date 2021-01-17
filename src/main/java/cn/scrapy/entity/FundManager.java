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
@TargetUrl("https://qieman.com/funds/manager/\\d+")
public class FundManager implements AfterExtractor , Serializable{

    private static final long serialVersionUID = 3379497944549162812L;
    /**
     * 主键
     */
    @TableId
    private Long id;
    /**
     * 姓名
     */
    @ExtractBy("//*[@id='app']/div[2]/div[2]/div/div/div/div/div[1]/div[1]/div[1]/div[2]/h2/text()")
    private String name;
    /**
     * 从业时间
     */
    @ExtractBy("//*[@id='app']/div[2]/div[2]/div/div/div/div/div[1]/div[1]/div[2]/div[2]/div/text()")
    private String workingTime;

    @Override
    public void afterProcess(Page page) {
        id = Long.parseLong(page.getRequest().getUrl().substring(33));
    }
}