package cn.scrapy.pipeline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.scrapy.entity.Experience;
import cn.scrapy.service.ExperienceService;
import lombok.extern.slf4j.Slf4j;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Slf4j
@Component
public class ExperiencePipeline implements PageModelPipeline<Experience> {

    @Autowired
    private ExperienceService experienceService;

    @Override
    public void process(Experience experience, Task task) {
        log.info("save Experience：{}", experience.toString());
        experienceService.saveOrUpdate(experience);
    }

}
