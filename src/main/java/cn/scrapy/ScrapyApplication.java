package cn.scrapy;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("cn.scrapy.dao")
@SpringBootApplication
public class ScrapyApplication {

	public static void main(String[] args) {
		SpringApplication.run(ScrapyApplication.class, args);
	}

}
