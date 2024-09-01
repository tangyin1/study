package com.gaocheng.mapper;
import java.util.List;

import com.gaocheng.pojo.po.Option;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
* @author gaocheng
* @description 针对表【t_option(题目选项表)】的数据库操作Mapper
* @createDate 2022-03-27 14:52:54
* @Entity com.gaocheng.pojo.po.Option
*/
@Repository
public interface OptionMapper extends BaseMapper<Option> {
    List<Option> selectByQuestionId(@Param("questionId") Integer questionId);
}




