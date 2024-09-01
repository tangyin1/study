package com.gaocheng.pojo.dto;

import com.gaocheng.pojo.po.Option;
import com.gaocheng.pojo.po.Question;
import lombok.Data;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/03/27/13:34
 * @Description:
 */
@Data
public class SaveQuestionDTO {

    private Question question;

    private Option[] option;

}
