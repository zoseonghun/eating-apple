package com.trifling.things.dto.response;

import com.trifling.things.entity.Movie;
import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MainListResponseDTO {

    private int movieNum;
    private String movieTitle;
    private int movieScore;
    private String imgUrl;

    public MainListResponseDTO(Movie movie) {
        this.movieNum = movie.getMovieNum();
        this.movieTitle = movie.getMovieTitle();
        this.movieScore = movie.getMovieScore();
        this.imgUrl = movie.getImgUrl();
    }
}
