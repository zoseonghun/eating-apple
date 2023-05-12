package com.trifling.things.controller;

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

    @GetMapping("/list")
    @ResponseBody
    public String movieList(Model model) {
        log.info("/movies/detail : GET");
        List<Movie> movies = movieService.movieList();

        model.addAttribute("mList", movies);
        return "movies/list";
    }

    @GetMapping("/detail")
    public String movieDetail(Model model, int movieNum) {
        log.info("/movies/detail : GET");
        movieService.movieScoreRenew(movieNum);
        Movie movie = movieService.movieFindOne(movieNum);

        model.addAttribute("movieCode", movie);
        return "movies/detail";
    }




}
