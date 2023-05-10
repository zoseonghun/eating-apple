package com.trifling.things.repository;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class MovieMapperTest {

    @Autowired
    MovieMapper mapper;

    @Test
    @DisplayName("영화 전체 목록을 조회해야 한다")
    void allList() {

    }

}