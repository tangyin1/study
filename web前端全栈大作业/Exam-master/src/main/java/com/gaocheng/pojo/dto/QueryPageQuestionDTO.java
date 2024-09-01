package com.gaocheng.pojo.dto;

import com.gaocheng.pojo.enums.TypeEnum;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/03/21/0:29
 * @Description:
 */
@Data
public class QueryPageQuestionDTO {

    @NotBlank(message = "页码不能为空")
    private Integer page;

    @NotBlank(message = "每页大小不能为空")
    private Integer limit;

    private Integer repoId;

    private Integer chapterId;

    private TypeEnum type;

    private String content;

    private List<Integer> excludeIdList;

}
