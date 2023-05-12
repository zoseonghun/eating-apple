package com.trifling.things.dto.request;

import lombok.*;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor @AllArgsConstructor
public class RatePostRequestDTO {

    private int userNum;
    private int movieNum;
    private String rateReview;
    private int rateScore;

}
