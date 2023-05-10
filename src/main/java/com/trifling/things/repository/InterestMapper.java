package com.trifling.things.repository;

import com.trifling.things.entity.Movie;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface InterestMapper {


    //찜 목록 확인
    List<Movie> InterestbyUserNum(int userNum);

    //찜하기(추가) -확인필요
    int insertbyUserNum();


    // 찜 목록 1개 삭제
    boolean deletebyMovieNum(
            @Param("movie_num") int movieNum,
            @Param("user_num") int userNum);
}
