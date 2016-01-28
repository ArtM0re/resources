package org.registrator.community.dao;

import org.registrator.community.entity.ResourceNumber;
import org.registrator.community.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ResourceNumberRepository extends JpaRepository<ResourceNumber, String> {

}
