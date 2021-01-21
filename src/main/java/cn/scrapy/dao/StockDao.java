package cn.scrapy.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import org.apache.ibatis.annotations.Update;

import cn.scrapy.entity.Stock;

public interface StockDao extends BaseMapper<Stock> {
    @Update("""
    DELETE
    FROM
	    stock
    WHERE
	    SUBSTR( id, 1, 2 )= 'hk'
	    AND id IN (SELECT * FROM (SELECT s1.id FROM stock s1 JOIN stock s2 ON s1.`name` = s2.`name` AND s1.id != s2.id ) AS TEMP)
    """)
	void distinct();
}
