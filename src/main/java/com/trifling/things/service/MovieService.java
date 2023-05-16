package com.trifling.things.service;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.Search;
import com.trifling.things.dto.response.MainListResponseDTO;
import com.trifling.things.dto.response.MovieDetailResponseDTO;
import com.trifling.things.dto.response.MovieListResponseDTO;
import com.trifling.things.entity.Movie;
import com.trifling.things.entity.MovieImg;
import com.trifling.things.repository.MovieMapper;
import com.trifling.things.repository.RateMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class MovieService {

    private final MovieMapper movieMapper;
    private final RateMapper rateMapper;

    // 영화 목록 전체 조회 (필터링 붙여야된다)
    public List<MovieListResponseDTO> movieList(Search page) {
        return movieMapper.movieList(page).stream()
                .map(MovieListResponseDTO::new)
                .collect(Collectors.toList());
    }

    // 영화 하나 찾는 서비스
    public Movie movieFindOne(int movieNum) {
        return movieMapper.movieFindOne(movieNum);
    }

    public MovieDetailResponseDTO movieDetail(int movieNum) {

        List<MovieImg> movieImgs = movieMapper.targetMovieImg(movieNum);
        System.out.println("movieImgs = " + movieImgs);
        Movie movie = movieFindOne(movieNum);
        log.info("movieNum {}: ", movie.getMovieNum());

        int counted = rateMapper.countScore(movieNum); // 해당 영화의 총 평가 갯수

//        movie.setMovieScore(movie.getMovieScore());

        return new MovieDetailResponseDTO(movie, movieImgs);

    }



    public void movieScoreRenew(int movieNum) {

        movieMapper.movieScoreRenew(movieNum);
    }

    public int getCount(Search search) {
        return movieMapper.count(search);
    }

    public List<MainListResponseDTO> mainTopTenList(String type) {
        return movieMapper.mainTopTenList(type).stream()
                .map(MainListResponseDTO::new)
                .collect(Collectors.toList());
    }

}
