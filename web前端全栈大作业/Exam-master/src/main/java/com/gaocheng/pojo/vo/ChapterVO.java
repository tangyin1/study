package com.gaocheng.pojo.vo;

import com.gaocheng.pojo.po.Chapter;
import lombok.Data;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/05/04/11:48
 * @Description: 章节的VO，多一个题目数量字段
 */
@Data
public class ChapterVO extends Chapter {

    /**
     * 题目数量
     */
    private Long questionCount;

}
