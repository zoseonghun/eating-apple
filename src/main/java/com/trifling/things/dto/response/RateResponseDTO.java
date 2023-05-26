package com.trifling.things.dto.response;

import com.fasterxml.jackson.annotation.JsonFormat;
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
    @JsonFormat(pattern = "yyyy년 MM월 dd일 HH:mm")
    private LocalDateTime rateDate;
    private String userId;
    private String profileImage;

    public RateResponseDTO(Rate rate) {
        this.rateNum = rate.getRateNum();
        this.userNum = rate.getUserNum();
        this.movieNum = rate.getMovieNum();
//        this.rateReview = shortReview(rate.getRateReview(), 50);
        this.rateReview = rate.getRateReview();
        this.rateScore = rate.getRateScore();
        this.rateDate = rate.getRateDate();
        this.userId = rate.getUserId();
        this.profileImage = rate.getProfileImage();
    }

    public String shortReview(String target, int wishLength) {
        return (target.length() > wishLength)
                ? target.substring(0, wishLength) + "..."
                : target;
    }
}
