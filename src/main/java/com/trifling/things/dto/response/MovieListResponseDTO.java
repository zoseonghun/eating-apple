package com.trifling.things.dto.response;

import com.trifling.things.entity.Movie;
import lombok.*;

@Setter
@Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor @AllArgsConstructor
@Builder
public class MovieListResponseDTO {

    private int movieNum;
    private String movieTitle;
    private int movieScore;
    private String imgUrl;
//    private int movieScore;

    public MovieListResponseDTO(Movie movie) {
        this.movieNum = movie.getMovieNum();
        this.movieTitle = movie.getMovieTitle();
        this.movieScore = movie.getMovieScore();
        this.imgUrl = movie.getImgUrl();
    }

    // 영화 제목이 길거나 할때 문자열 제한 두는 기능을 만들어도 좋음
}
