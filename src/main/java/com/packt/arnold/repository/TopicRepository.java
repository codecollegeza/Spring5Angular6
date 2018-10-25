package com.packt.arnold.repository;

import com.packt.arnold.dataservice.dbmodel.orm.Topic;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TopicRepository extends CrudRepository<Topic, Long> {
    List<Topic> findByDescriptionLikeIgnoreCase(String description);
}