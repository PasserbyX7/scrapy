package cn.scrapy.service.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.scrapy.dao.FundDao;
import cn.scrapy.dto.FundDTO;
import cn.scrapy.entity.Fund;
import cn.scrapy.service.FundService;
import cn.scrapy.service.StockService;

@Service
public class FundServiceImpl extends ServiceImpl<FundDao, Fund> implements FundService {

    @Autowired
    private StockService stockService;

    @Override
    public List<FundDTO> listFundDTO() {
        var fundDTOs = baseMapper.listFundDTO();
        fundDTOs.forEach(fund -> {
            double pb = 0, pe = 0;
            for (var stockDTO : stockService.listByFundId(fund.getId())) {
                pb += stockDTO.getPb() * stockDTO.getPercent();
                pe += stockDTO.getPe() * stockDTO.getPercent();
            }
            fund.setPb(pb / 100);
            fund.setPb(pe / 100);
        });
        return fundDTOs;
    }

    @Override
    public String[] getFundUrls() throws IOException {
        Path path = Paths.get("C:\\Users\\75663\\Desktop\\funds.txt");
        // @formatter:off
        return Files.readAllLines(path)
                            .stream()
                            .filter(line -> !line.endsWith("加自选"))
                            .map(str -> str.substring(str.indexOf("(") + 1, str.indexOf("(") + 7))
                            .map(e -> "https://qieman.com/funds/" + e)
                            .toArray(String[]::new);
        // @formatter:on
    }

    @Override
    public String[] getFundStockRelationUrls() {
        return list().stream().map(e -> "http://fund.eastmoney.com/" + e.getId() + ".html").toArray(String[]::new);
    }
}
