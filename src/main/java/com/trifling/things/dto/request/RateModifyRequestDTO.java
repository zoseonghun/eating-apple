package com.trifling.things.dto.request;


import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@Builder
public class RateModifyRequestDTO {
    private int rateNum;
    private int userNum;
    private int rateScore;
    private String rateReview;

//    private int movieNum;

}
