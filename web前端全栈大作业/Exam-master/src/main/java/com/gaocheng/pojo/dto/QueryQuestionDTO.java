package com.gaocheng.pojo.dto;

import com.gaocheng.pojo.enums.TypeEnum;
import lombok.Data;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/03/21/0:29
 * @Description:
 */
@Data
public class QueryQuestionDTO {

    private Integer repoId;

    private Integer chapterId;

    private TypeEnum type;

    private String content;

}
