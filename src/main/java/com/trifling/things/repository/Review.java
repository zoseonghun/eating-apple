package com.trifling.things.repository;

import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class Review {
    private String userNum;
    private int rateNum;
}