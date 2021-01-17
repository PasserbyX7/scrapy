package cn.scrapy.formatter;

import java.time.LocalDate;

import us.codecraft.webmagic.model.formatter.ObjectFormatter;

public class LocalDateFormatter implements ObjectFormatter<LocalDate> {

    @Override
    public LocalDate format(String raw) throws Exception {
        return LocalDate.parse(raw);
    }

    @Override
    public Class<LocalDate> clazz() {
        return LocalDate.class;
    }

    @Override
    public void initParam(String[] extra) {
    }

}
