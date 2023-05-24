package com.trifling.things.repository;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.Search;
import com.trifling.things.entity.Movie;
import com.trifling.things.entity.MovieImg;
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

    @Test
    @DisplayName("영화 등록 성공시 리턴값이 3이어야 한다")
    void newMovie() {
        //given
        Movie info = Movie.builder()
                .movieTitle("테스트용")
                .movieInfo("줄거리1")
                .movieGenre("공포")
                .movieDirector("동관쓰")
                .movieRuntime("200분")
                .movieAge(19)
                .build();

        int count = mapper.maxMovieNum();
        System.out.println("count = " + count);
        MovieImg poster = MovieImg.builder()
                .movieNum(count+1)
                .imgName("poster")
                .imgUrl("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSOw35Rhk1HVB0Qs8m8G9WtCae5o_6wEk_ElJxc2pYH1MA_Zcgg")
                .build();

        MovieImg youtube = MovieImg.builder()
                .movieNum(count+1)
                .imgName("youtube")
                .imgUrl("-HWEgCMTQxE")
                .build();

        //when
        int i = mapper.insertMovieInfo(info);
        int j = 0;
        int k = 0;
        System.out.println(count+1);
        if (i == 1) {
            j = mapper.insertMovieImg(poster);
            k = mapper.insertMovieImg(youtube);
        }

        //then
        assertEquals(124, count);
        assertEquals(3, i+j+k);
    }
}