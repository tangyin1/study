package com.gaocheng.pojo.dto;

import com.gaocheng.pojo.po.Paper;
import com.gaocheng.pojo.po.PaperQuestion;
import lombok.Data;

import java.util.List;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/04/02/13:52
 * @Description:
 */
@Data
public class SavePaperDTO {

    private Paper paper;

    private List<List<PaperQuestion>> paperQuestionListList;

}
