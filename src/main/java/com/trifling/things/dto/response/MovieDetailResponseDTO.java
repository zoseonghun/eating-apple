package com.trifling.things.dto.response;

import com.trifling.things.entity.Movie;
import com.trifling.things.entity.MovieImg;
import lombok.*;

import java.util.List;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
public class MovieDetailResponseDTO {

    private int movieNum;
    private String title;
    private String info;
    private String runtime;
    private String director;
    private String genre;
    private String age;
    private int score;
    private List<MovieImg> movieImgList;


    public MovieDetailResponseDTO(Movie movie, List<MovieImg> movieImgList) {
        this.title = movie.getMovieTitle();
        this.info = movie.getMovieInfo();
        this.runtime = movie.getMovieRuntime();
        this.director = movie.getMovieDirector();
        this.genre = movie.getMovieGenre();
        this.age = movie.getMovieAge();;
        this.score = movie.getMovieScore();
        this.movieImgList = movieImgList;
    }
}
