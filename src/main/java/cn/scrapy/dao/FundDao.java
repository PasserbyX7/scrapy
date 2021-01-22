package cn.scrapy.dao;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.scrapy.dto.FundDTO;
import cn.scrapy.entity.Fund;

public interface FundDao extends BaseMapper<Fund> {

    @Select("""
    SELECT
        f.id,
        f.name as 'name',
        m.name as 'manager',
        f.drawdown as 'drawdown',
        f.volatility as 'volatility',
        f.sharpe_ratio as 'sharpe_ratio'
    FROM
        fund f
        JOIN fund_manager m ON f.fund_manager_id = m.id
        JOIN experience e ON e.fund_manager_id = m.id
        JOIN (
            SELECT
                m.id,
                count(1) as 'cnt'
            FROM
                fund_manager m
                JOIN experience e ON m.id = e.fund_manager_id
            GROUP BY
                e.fund_manager_id
        ) temp ON temp.id = m.id
        AND e.name = f.name
    WHERE
        f.drawdown <= #{drawdown}
        AND datediff(now(), f.create_time) >= #{fundTime} * 365
        AND datediff(now(), e.start_time) >= #{managerTradingTime} * 365
        AND SUBSTR(m.working_time, 1, INSTR(m.working_time, '年') -1) + 0 >= #{managerWorkingTime}
        AND temp.cnt <= #{fundCnt}
    ORDER BY
        f.drawdown ASC,
        f.volatility DESC,
        f.sharpe_ratio ASC
    """)
    List<FundDTO> listFundDTO(double drawdown,int fundTime,int fundCnt,int managerTradingTime,int managerWorkingTime);
    
// Established
}
