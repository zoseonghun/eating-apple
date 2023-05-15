package com.trifling.things.dto.response;

import com.trifling.things.entity.Rate;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RateResponseDTO {

    private int rateNum;
    private int userNum;
    private int movieNum;
    private String rateReview;
    private int rateScore;
    private LocalDateTime rateDate;

    public RateResponseDTO(Rate rate) {
        this.rateNum = rate.getRateNum();
        this.userNum = rate.getUserNum();
        this.movieNum = rate.getMovieNum();
        this.rateReview = rate.getRateReview();
        this.rateScore = rate.getRateScore();
        this.rateDate = rate.getRateDate();
    }
}
