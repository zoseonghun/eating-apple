package com.trifling.things.service;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.Search;
import com.trifling.things.dto.request.InsertMovieRequestDTO;
import com.trifling.things.dto.response.MainListResponseDTO;
import com.trifling.things.dto.response.MovieDetailResponseDTO;
import com.trifling.things.dto.response.MovieListResponseDTO;
import com.trifling.things.entity.Movie;
import com.trifling.things.entity.MovieImg;
import com.trifling.things.repository.InterestMapper;
import com.trifling.things.repository.MovieMapper;
import com.trifling.things.repository.RateMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class MovieService {

    private final MovieMapper movieMapper;
    private final RateMapper rateMapper;
    private final InterestMapper interestMapper;

    // 영화 평가점수 만점 수치 (테스트중 만점 10점) -> 5점으로 바꿔야함
    private static final int MAX_SCORE_COUNT = 5;

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
//        System.out.println("movieImgs = " + movieImgs);
        Movie movie = movieFindOne(movieNum);
        log.info("score {}: ", movie.getMovieNum());

//        double counted = rateMapper.countScore(movieNum) * MAX_SCORE_COUNT; // 해당 영화의 총 평가 갯수

//        movie.setMovieScore( (int)(movie.getMovieScore() / counted  * 100));

        int likeCount = interestMapper.movieLikeCount(movieNum);

        return new MovieDetailResponseDTO(movie, movieImgs, likeCount);

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

    public int checkLike(int movieNum, int userNum) {

        return movieMapper.checkLike(movieNum, userNum);

    }
    @Transactional
    public int insertMovie(InsertMovieRequestDTO dto, String savePath) {
        int i = 0, j = 0, k = 0;

        Movie newMovie = dto.toMovie();
        i = movieMapper.insertMovieInfo(newMovie);
        log.info("i : {}", i);
        if (i == 1) {
            // 현재 영화 갯수(시퀀스 마지막 번호)
            int movieCount = movieMapper.maxMovieNum();
            log.info("auto : {}",movieCount);
            MovieImg newMovieImg = dto.toMovieImg(movieCount-1, savePath);
            MovieImg newMovieYoutube = dto.toMovieYoutube(movieCount-1);

            j = movieMapper.insertMovieImg(newMovieYoutube);
            k = movieMapper.insertMovieImg(newMovieImg);
        }

        return i+j+k;
    }


}
