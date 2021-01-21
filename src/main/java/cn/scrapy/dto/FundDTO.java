package cn.scrapy.dto;

import lombok.Data;

@Data
public class FundDTO {
    private Long id;
    private String manager;
    private Double drawdown;
    private Double volatility;
    private Double sharpeRatio;
    private Double Pb;
    private Double Pe;
}
