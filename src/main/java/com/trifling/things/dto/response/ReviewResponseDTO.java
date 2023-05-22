package com.trifling.things.dto.response;

import com.trifling.things.entity.Movie;
import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class ReviewResponseDTO {
    private String userNum;
    private int rateNum;
    private int movieNum;
    private String movieTitle;
    private String rateReview;
    private int rateScore;
    private LocalDateTime rateDate;
    private int rateLike;


    public ReviewResponseDTO(Movie movie) {
        this.movieNum = movie.getMovieNum();
        this.movieTitle = movie.getMovieTitle();
    }
}