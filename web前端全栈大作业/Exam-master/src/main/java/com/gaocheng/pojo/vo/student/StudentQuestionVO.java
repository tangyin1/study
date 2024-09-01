package com.gaocheng.pojo.vo.student;

import com.gaocheng.pojo.enums.TypeEnum;
import com.gaocheng.pojo.po.StudentOption;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/04/11/21:48
 * @Description: 答案
 */
@Data
public class StudentQuestionVO implements Serializable {

    /**
     * 回答id
     */
    private Integer id;

    /**
     * 题目id
     */
    private Integer questionId;

    /**
     * 题目类型
     */
    private TypeEnum type;

    /**
     * 题目分数
     */
    private BigDecimal score;

    /**
     * 题目排序
     */
    private Integer orderNum;

    /**
     * 回答
     */
    private String Answer;

    /**
     * 是否已答
     */
    private Integer isAnswered;

    /**
     * 选项信息
     */
    private List<StudentOption> options;
}
