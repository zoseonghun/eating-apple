package com.trifling.things.repository;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.response.ScoreResponseDTO;
import com.trifling.things.entity.Rate;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface RateMapper {

    // 평가 등록하기
    public boolean rateWrite(Rate rate);

    // 평가 수정하기
    public boolean rateModify(Rate rate);

    // 평가 삭제하기
    public boolean rateDelete(int rateNum);

    // 평가 목록 조회
    // 파라미터 num 은 type 에 따라 userNum 또는 movieNum 이 넘어옴
    public List<Rate> rateList(@Param("type") String type
            , @Param("target") int target
            , @Param("page") Page page
    );

    // 평가 조회
    public Rate rateFindOne(int rateNum);

    public int countScore(int movieNum);

    // 미사용
    public int insertBeforeCheck(@Param("movieNum") int movieNum
            , @Param("userNum") int userNum);

    public int insertLike(@Param("movieNum") int movieNum
            , @Param("userNum") int userNum);

    public int deleteLike(@Param("movieNum") int movieNum
            , @Param("userNum") int userNum);

    public ScoreResponseDTO totalMovieScore(int movieNum);
}
