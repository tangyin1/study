package com.gaocheng.mapper;

import com.gaocheng.pojo.po.Chapter;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
* @author gaocheng
* @description 针对表【t_chapter(章节表)】的数据库操作Mapper
* @createDate 2022-03-21 23:40:10
* @Entity com.gaocheng.pojo.po.Chapter
*/
@Repository
public interface ChapterMapper extends BaseMapper<Chapter> {

}




