package com.gaocheng.pojo.vo.student;

import com.gaocheng.pojo.po.Option;
import com.gaocheng.pojo.enums.TypeEnum;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/04/11/21:48
 * @Description: 发给学生考试界面的题目，不能包含敏感信息
 */
@Data
public class StudentExamQuestionVO implements Serializable {

    /**
     * 题目id
     */
    private Integer questionId;

    /**
     * 排序号
     */
    private Integer orderNum;

    /**
     * 题目类型
     */
    private TypeEnum type;

    /**
     * 题目分数
     */
    private BigDecimal score;

    /**
     * 题目内容
     */
    private String content;

    /**
     * 题目图片
     */
    private String image;

    /**
     * 选项
     */
    private List<Option> options;
}
