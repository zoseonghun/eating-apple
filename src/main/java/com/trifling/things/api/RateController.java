package com.trifling.things.api;

import com.trifling.things.entity.Rate;
import com.trifling.things.service.RateService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/rate")
@Slf4j
public class RateController {

    private final RateService rateService;

    @GetMapping("/{type}/movie/{movieNum}")
    public ResponseEntity<?> rateList(String type, int movieNum) {
        log.info("/api/v1/rate/{}/movie/{} : GET", type, movieNum );

        List<Rate> rateList = rateService.getRateList(type, movieNum);

        return ResponseEntity.ok().body(rateList);
    }


}
