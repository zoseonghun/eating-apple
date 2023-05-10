package com.trifling.things.entity;

import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Rate {
    private int rateNum;
    private int userNum;
    private int movieNum;
    private String rateReview;
    private int rateScore;
    private LocalDateTime rateDate;
    private int rateLike;

}
