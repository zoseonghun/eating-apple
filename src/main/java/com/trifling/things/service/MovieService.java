package com.trifling.things.service;

import com.trifling.things.entity.Movie;
import com.trifling.things.repository.MovieMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MovieService {

    private final MovieMapper movieMapper;

    // 영화 목록 전체 조회 (필터링 붙여야된다)
    public List<Movie> movieList() {
        List<Movie> movies = movieMapper.movieList();

        return movies;
    }

    // 영화 하나 찾는 서비스
    public Movie movieFindOne(int movieNum) {

        Movie movie = movieMapper.movieFindOne(movieNum);

        return movie;
    }

    public void movieScoreRenew(int movieNum) {

        movieMapper.movieScoreRenew(movieNum);
    }


}
