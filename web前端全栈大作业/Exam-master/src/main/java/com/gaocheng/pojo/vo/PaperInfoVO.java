package com.gaocheng.pojo.vo;

import lombok.Data;

import java.util.List;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/04/02/16:18
 * @Description:
 */
@Data
public class PaperInfoVO {

    private PaperVO paper;

    private List<List<PaperQuestionVO>> paperQuestionListList;

}
