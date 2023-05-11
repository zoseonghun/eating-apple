package com.trifling.things.service;

import com.trifling.things.entity.Rate;
import com.trifling.things.repository.RateMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RateService {

    private final RateMapper rateMapper;

    public boolean rateWrite(Rate rate) {

        return false;

    }

    public List<Rate> getRateList(String type, int movieNum) {
        List<Rate> rates = rateMapper.rateList(type, movieNum);

        return rates;
    }
}
