package com.gaocheng.pojo.dto;

import lombok.Data;

import java.util.List;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/04/24/13:27
 * @Description:
 */
@Data
public class GetRandomQuestionDTO {

    Integer typeId;

    Integer repoId;

    Integer chapterId;

    Integer quantity;

    private List<Integer> excludeIdList;
}
