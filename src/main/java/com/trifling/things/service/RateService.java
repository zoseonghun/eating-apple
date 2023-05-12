package com.trifling.things.service;

import com.trifling.things.dto.request.RatePostRequestDTO;
import com.trifling.things.entity.Rate;
import com.trifling.things.repository.RateMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


// RESTful 방식으로써 사실상 return이 getRateList여야 한다
@Service
@RequiredArgsConstructor
public class RateService {

    private final RateMapper rateMapper;

    public List<Rate> getRateList(String type, int target) {
        List<Rate> rates = rateMapper.rateList(type, target);

        return rates;
    }


    // 리턴 타입 entity
    public Rate rateWrite(RatePostRequestDTO dto) {
        Rate rate = new Rate();
        // dto를 entity로 변환해줘야댐
        boolean flag = rateMapper.rateWrite(rate);

        return null; // 엔티티 리턴해줘야 RESTful 적용 가능 바로 보여져야됨
    }

    public Rate rateFindOne(int rateNum) {
        Rate rate = rateMapper.rateFindOne(rateNum);

        return rate; //
    }


}
