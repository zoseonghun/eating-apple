package com.trifling.things.repository;

import com.trifling.things.entity.Rate;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RateMapper {

    // 평가 등록하기
    public void rateWrite(Rate rate);

    // 평가 수정하기
    public void rateModify(Rate rate);

    // 평가 삭제하기
    public void rateDelete(long rateNum);
}
