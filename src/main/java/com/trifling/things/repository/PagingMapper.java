package com.trifling.things.repository;

import com.trifling.things.dto.response.ReviewResponseDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface PagingMapper {
    List<ReviewResponseDTO> userPaging(@Param("pageStart") int pageStart, @Param("amount") int amount);
    int getTotalCount();

}
