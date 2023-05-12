package com.trifling.things.service;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.Search;
import com.trifling.things.dto.response.MovieListResponseDTO;
import com.trifling.things.entity.Movie;
import com.trifling.things.repository.MovieMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MovieService {

    private final MovieMapper movieMapper;

    // 영화 목록 전체 조회 (필터링 붙여야된다)
    public List<MovieListResponseDTO> movieList(Search page) {

        return movieMapper.movieList(page).stream()
                .map(MovieListResponseDTO::new)
                .collect(Collectors.toList());
    }

    // 영화 하나 찾는 서비스
    public Movie movieFindOne(int movieNum) {

        Movie movie = movieMapper.movieFindOne(movieNum);

        return movie;
    }

    public void movieScoreRenew(int movieNum) {

        movieMapper.movieScoreRenew(movieNum);
    }

    public int getCount(Search search) {
        return movieMapper.count(search);
    }

}
