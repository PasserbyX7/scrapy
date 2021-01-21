package cn.scrapy.dto;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StockDTO implements Serializable {

    private static final long serialVersionUID = 3950535504563811356L;
    /**
     * 市盈率
     */
    private Double Pe;
    /**
     * 市净率
     */
    private Double Pb;
    /**
     * 持仓百分比
     */
    private Double percent;
}
