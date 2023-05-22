package com.trifling.things.repository;

import lombok.*;

import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class Review {
    private String userNum;
    private int rateNum;
    private int movieNum;
    private String movieTitle;
    private String rateReview;
    private int rateScore;
    private LocalDateTime rateDate;
    private int rateLike;

}