package com.trifling.things.repository;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.Search;
import com.trifling.things.entity.Movie;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class MovieMapperTest {

    @Autowired
    MovieMapper mapper;

    @Test
    @DisplayName("영화 전체 목록을 볼수있어야 하고 그중 " +
            "첫번째 영화의 타이틀은 '영화1' 이어야 한다, 사이즈는 5여야 한다 ")
    void allListTest() {

        Search search = new Search();
        List<Movie> movies = mapper.movieList(search);

        assertEquals("영화1", movies.get(0).getMovieTitle());
        assertEquals(5, movies.size());

        System.out.println("movies = " + movies.get(0));
    }

    @Test
    @DisplayName("3번째 영화의 감독은 홍길동이며 장르는 멜로 이다")
    void findOneTest() {

        Movie movie = mapper.movieFindOne(3);

        assertEquals("홍길동", movie.getMovieDirector());
        assertEquals("멜로", movie.getMovieGenre());

        System.out.println("movie = " + movie);
    }

    @Test
    @DisplayName("영화 점수 합산")
    void movieScoreTest() {
        int movieNum = 1;

        boolean flag = mapper.movieScoreRenew(1);
        Movie movie = mapper.movieFindOne(1);

        assertTrue(flag);
        System.out.println("movie = " + movie.getMovieTitle());
        System.out.println("movie = " + movie.getMovieScore());

    }
}