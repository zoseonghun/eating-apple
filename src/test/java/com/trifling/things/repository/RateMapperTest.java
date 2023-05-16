package com.trifling.things.repository;

import com.trifling.things.entity.Rate;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class RateMapperTest {

    @Autowired
    RateMapper mapper;

    @Test
    @DisplayName("평가 테이블에 데이터가 삽입 되어야 한다")
    void writeTest() {
        Rate rate = Rate.builder()
                .rateReview("아주 좋은 영화에요")
                .userNum(1)
                .movieNum(2)
                .build();

        boolean flag = mapper.rateWrite(rate);

        assertTrue(flag);

    }

    @Test
    @DisplayName("1번 평가의 리뷰 내용과 시간이 수정되어야 한다.")
    void modifyTest() {
        int rateNum = 1;
        String review = "수정 내용";

        Rate modiRate = Rate.builder()
                .rateNum(rateNum)
                .rateReview(review)
                .rateDate(LocalDateTime.now())
                .build();

        boolean flag = mapper.rateModify(modiRate);
        assertTrue(flag);



    }

//    @Test
//    @DisplayName("1번 유저가 1번 영화에 등록한 평가의 내용이 수정되어야 한다")
//    void



}