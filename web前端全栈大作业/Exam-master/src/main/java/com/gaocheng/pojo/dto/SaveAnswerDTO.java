package com.gaocheng.pojo.dto;

import com.gaocheng.pojo.po.StudentOption;
import lombok.Data;

import java.util.List;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/04/16/20:58
 * @Description:
 */
@Data
public class SaveAnswerDTO {

    /**
     * 学生问题id
     */
    Integer studentQuestionId;

    /**
     * 回答
     */
    String answer;

    /**
     * 学生选项
     */
    List<StudentOption> studentOptions;

}
