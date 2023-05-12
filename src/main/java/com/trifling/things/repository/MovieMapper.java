package com.trifling.things.repository;

import com.trifling.things.dto.page.Search;
import com.trifling.things.entity.Movie;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MovieMapper {

    // 영화 등록하기(관리자)

    // 영화 삭제하기(관리자)

    // 영화 전체 조회
    public List<Movie> movieList(Search page);

    // 영화 상세 조회
    public Movie movieFindOne(int movieNum);

    // 영화 점수 갱신
    public boolean movieScoreRenew(int movieNum);

    int count(Search search);
}
