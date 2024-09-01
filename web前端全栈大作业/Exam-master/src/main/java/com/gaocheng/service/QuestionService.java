package com.gaocheng.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gaocheng.pojo.dto.QueryPageQuestionDTO;
import com.gaocheng.pojo.dto.QueryQuestionDTO;
import com.gaocheng.pojo.dto.SaveQuestionDTO;
import com.gaocheng.pojo.po.Question;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gaocheng.pojo.vo.QuestionVO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
* @author gaocheng
* @description 针对表【t_question(题目表)】的数据库操作Service
* @createDate 2022-03-25 14:03:39
*/
public interface QuestionService extends IService<Question> {

    Page<QuestionVO> getQuestionVOPage(QueryPageQuestionDTO queryPageQuestionDTO);

    boolean saveQuestionAndAnswer(SaveQuestionDTO saveQuestionDTO);

    void deleteQuestion(Question question);

    List<QuestionVO> getRandomQuestion(Integer repoId, Integer chapterId, Integer quantity, Integer typeId, List<Integer> excludeIdList);

    String exportExcel(QueryQuestionDTO queryQuestionDTO, HttpServletRequest req) throws Exception;

    void importExcel(String path);

}
