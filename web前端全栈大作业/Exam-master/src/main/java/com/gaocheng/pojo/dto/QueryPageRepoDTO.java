package com.gaocheng.pojo.dto;

import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/03/21/0:29
 * @Description:
 */
@Data
public class QueryPageRepoDTO {

    @NotBlank(message = "页码不能为空")
    private Integer page;

    @NotBlank(message = "每页大小不能为空")
    private Integer limit;

    private String name;

}
