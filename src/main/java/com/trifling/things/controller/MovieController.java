package com.trifling.things.controller;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.PageMaker;
import com.trifling.things.dto.page.Search;
import com.trifling.things.dto.response.MovieDetailResponseDTO;
import com.trifling.things.dto.response.MovieListResponseDTO;
import com.trifling.things.entity.Movie;
import com.trifling.things.service.MovieService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movies")
@Slf4j
public class MovieController {

    private final MovieService movieService;


    // 영화 전체 목록 조회
    // 영화 포스터, 이름, 페이지
    @GetMapping("/list")
    public String movieList(Search page, Model model) {
        log.info("/movies/home : GET");
        log.info("pageNo:{} pageAmount:{}",page.getPageNo(),page.getAmount());

        List<MovieListResponseDTO> dto = movieService.movieList(page);

        PageMaker maker = new PageMaker(page, movieService.getCount(page));

        model.addAttribute("mList", dto);
        model.addAttribute("maker", maker);
        model.addAttribute("s", page);

        return "movies/list";
    }

    @GetMapping("/detail")
    public String movieDetail(Model model, int mno) {
        log.info("/movies/detail : GET");
        movieService.movieScoreRenew(mno);
        MovieDetailResponseDTO dto = movieService.movieDetail(mno);

        model.addAttribute("detail", dto);
        return "movies/detail";
    }




}
