package com.packt.arnold;

import com.packt.arnold.repository.TopicRepository;
import com.packt.arnold.dataservice.dbmodel.orm.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class Controller {

    @Autowired
    TopicRepository topicRepository;

    @RequestMapping ("/")
    public List<Topic> index(){

        return topicRepository.findByDescriptionLikeIgnoreCase("%spring%");
    }
}
