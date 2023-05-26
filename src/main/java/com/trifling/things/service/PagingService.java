package com.trifling.things.service;

import com.trifling.things.repository.PagingMapper;
import com.trifling.things.dto.response.ReviewResponseDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class PagingService {

    private final PagingMapper pagingMapper;

    public List<ReviewResponseDTO> pagingReview(int pageStart, int amount) {
        return pagingMapper.userPaging(pageStart, amount);
    }

    public int getTotalCount() {
        return pagingMapper.getTotalCount();
    }
}
