package com.trifling.things.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface PagingMapper {
    List<Review> userPaging(@Param("pageStart") int pageStart, @Param("amount") int amount);
    int getTotalCount();

}
