package com.trifling.things.controller;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.PageMaker;
import com.trifling.things.dto.response.ReviewResponseDTO;
import com.trifling.things.service.PagingService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movies")
@Slf4j
public class PagingController {
    private final PagingService pagingService;

    @GetMapping("/user/review")
    public String getUserReviewPaging(Page page, Model model) {
        page.setAmount(3);

        int totalCount = pagingService.getTotalCount(); // 전체 리뷰 수를 가져옴
        PageMaker pageMaker = new PageMaker(page, totalCount); // 페이지 정보를 생성

        List<ReviewResponseDTO> reviewList = pagingService.pagingReview(page.getPageStart(), page.getAmount()); // 페이징된 리뷰 목록을 가져옴

        model.addAttribute("reviewList", reviewList);
        model.addAttribute("pageMaker", pageMaker);

        return "user/review"; //다시 확인필요
    }
}
