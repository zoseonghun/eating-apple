package com.trifling.things.api;

import com.trifling.things.dto.request.RatePostRequestDTO;
import com.trifling.things.entity.Rate;
import com.trifling.things.service.RateService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/rates")
@Slf4j
public class RateController {

    private final RateService rateService;

    // 평가 전체 목록 조회
    @GetMapping("/{type}/movie/{target}")
    public ResponseEntity<?> rateList(@PathVariable String type,
                                      @PathVariable int target) {
        log.info("/api/v1/rate/{}/movie/{} : GET", type, target );

        List<Rate> rateList = rateService.getRateList(type, target);

        return ResponseEntity.ok().body(rateList);
    }

    @PostMapping("/post")
    public ResponseEntity<?> rateWrite(
            @Validated @RequestBody RatePostRequestDTO dto) {
        // 파라미터에 BindingResult 객체를 통해 검증 결과 확인 가능
        log.info("/api/v1/rate/post : POST!");
        log.info("param: {}", dto);

        rateService.rateWrite(dto); // responsedto로 리턴받아

        return ResponseEntity.ok().body("asd"); // 보여줄 responsedto를 실어 줘야함
    }

    @RequestMapping(method = {RequestMethod.PATCH, RequestMethod.PUT})
    public ResponseEntity<?> rateModify() {

        return null;
    }


}
