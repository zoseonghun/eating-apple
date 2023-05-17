package com.trifling.things.api;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.request.RateModifyRequestDTO;
import com.trifling.things.dto.request.RatePostRequestDTO;
import com.trifling.things.dto.response.RateListResponseDTO;
import com.trifling.things.dto.response.RateResponseDTO;
import com.trifling.things.service.RateService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/rates")
@Slf4j
public class RateController {

    private final RateService rateService;

    // 평가 목록 조회 (마이페이지에서 조회용)
    @GetMapping("/{type}/contents/{target}/page/{pageNo}")
    public ResponseEntity<?> rateList(
            @PathVariable String type,
            @PathVariable int target,
            @PathVariable int pageNo
    ) {

        log.info("/rate/{}/contents/{}/page/{} : GET", type, target, pageNo );

        Page page = new Page();
        page.setPageNo(pageNo);
        page.setAmount(10);

        RateListResponseDTO rateList = rateService.getRateList(type, target, page);

        return ResponseEntity.ok().body(rateList);
    }


    // 평가 등록 기능
    @PostMapping("/post")
    public ResponseEntity<?> rateWrite(
            @Validated @RequestBody RatePostRequestDTO dto, BindingResult result) {

        if (result.hasErrors()) {
            return ResponseEntity
                    .badRequest()
                    .body(result.toString());
        }
        log.info("/api/v1/rate/post : POST!");
        log.info("param: {}", dto);


        RateListResponseDTO rateList = rateService.rateWrite(dto);


        return ResponseEntity.ok().body(rateList); // 보여줄 responsedto를 실어 줘야함
    }

    // 평가 등록 모달 진입 전 평가 남겼는지 확인하는 기능
    @GetMapping("/{userNum}/num/{movieNum}")
    public ResponseEntity<?> isBeforeRate(
           @PathVariable int userNum
           , @PathVariable int movieNum) {
//        @RequestParam(defaultValue = "0") int userNum
//            , @RequestParam(defaultValue = "0")  int movieNum
        log.info("userNum:{}, movieNum:{}",userNum,movieNum);
        int check = rateService.insertBeforeCheck(movieNum, userNum);
        return ResponseEntity.ok().body(check);
    }

    @RequestMapping(method = {RequestMethod.PATCH, RequestMethod.PUT})
    public ResponseEntity<?> rateModify(RateModifyRequestDTO dto) {

        rateService.rateModify(dto);

        return null;
    }


}
