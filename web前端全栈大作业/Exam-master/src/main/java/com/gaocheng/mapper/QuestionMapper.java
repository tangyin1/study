package com.gaocheng.mapper;
import java.util.List;

import com.gaocheng.pojo.enums.TypeEnum;
import com.gaocheng.pojo.po.Question;
import com.gaocheng.pojo.vo.QuestionVO;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
* @author gaocheng
* @description 针对表【t_question(题目表)】的数据库操作Mapper
* @createDate 2022-03-25 14:03:39
* @Entity com.gaocheng.pojo.po.Question
*/
@Repository
public interface QuestionMapper extends BaseMapper<Question> {

    Page<QuestionVO> getQuestionVOPage(
            Page<QuestionVO> page,
            @Param("repoId") Integer repoId,
            @Param("chapterId") Integer chapterId,
            @Param("type") TypeEnum type,
            @Param("content") String content,
            @Param("list") List<Integer> excludeIdList);

    List<QuestionVO> getQuestionVO(
            @Param("repoId") Integer repoId,
            @Param("chapterId") Integer chapterId,
            @Param("type") TypeEnum type,
            @Param("content") String content);

    List<QuestionVO> selectQuestionsByRandom(
            @Param("repoId") Integer repoId,
            @Param("chapterId") Integer chapterId,
            @Param("quantity") Integer quantity,
            @Param("typeId") Integer typeId,
            @Param("list") List<Integer> excludeIdList);
}
