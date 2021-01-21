package cn.scrapy.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scrapy.dao.StockDao;
import cn.scrapy.dto.StockDTO;
import cn.scrapy.entity.Stock;
import cn.scrapy.service.FundStockRelationService;
import cn.scrapy.service.StockService;

@Service
public class StockServiceImpl extends ServiceImpl<StockDao, Stock> implements StockService {

    @Autowired
    private FundStockRelationService fundStockRelationService;

    @Override
    public void saveStocks() {
        var client = HttpClients.createDefault();
        var get = new HttpGet("https://eniu.com/static/data/stock_list.json");
        CloseableHttpResponse res = null;
        try {
            res = client.execute(get);
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONArray jsonArray = null;
        try {
            jsonArray = JSONArray.parseArray(EntityUtils.toString(res.getEntity()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        jsonArray.forEach(e -> {
            var json = (JSONObject) e;
            var stock = new Stock();
            stock.setId((String) json.get("stock_id"));
            stock.setName((String) json.get("stock_name"));
            save(stock);
        });
    }

    @Override
    public String[] getStockUrls() {
        // @formatter:off
        return list().stream()
                            .map(e->"https://eniu.com/gu/"+e.getId())
                            .toArray(String[]::new);
        // @formatter:on
    }

    @Override
    public Stock getByName(String name) {
        // @formatter:off
        return getOne(
                Wrappers.<Stock>lambdaQuery()
                                .eq(Stock::getName, name)
                                .isNotNull(Stock::getPb)
                                .isNotNull(Stock::getPe)
                );
        // @formatter:on
    }

    @Override
    public List<StockDTO> listByFundId(Long id) {
        // @formatter:off
        return fundStockRelationService
                                        .listByFundId(id)
                                        .stream()
                                        .map(e->{
                                            var stock=getById(e.getStockId());
                                            return new StockDTO(stock.getPe(),stock.getPb(),e.getPercent());
                                        })
                                        .collect(Collectors.toList());
        // @formatter:on
    }

    @Override
    public void init() {
        remove(Wrappers.<Stock>lambdaQuery().isNull(Stock::getName).isNull(Stock::getPe).isNull(Stock::getPb));
        baseMapper.distinct();
    }
}
