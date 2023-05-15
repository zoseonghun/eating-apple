package com.trifling.things.dto.request;

import com.trifling.things.entity.Rate;
import lombok.*;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor @AllArgsConstructor
public class RatePostRequestDTO {

    private int userNum;
    private int movieNum;
    private String rateReview;
    private int rateScore;

    public Rate toEntity() {
        return Rate.builder()
                .userNum(this.userNum)
                .movieNum(this.movieNum)
                .rateReview(this.rateReview)
                .rateScore(this.rateScore)
                .build();
    }
}
