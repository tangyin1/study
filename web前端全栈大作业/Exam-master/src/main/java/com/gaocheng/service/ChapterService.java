package com.gaocheng.service;

import com.gaocheng.pojo.po.Chapter;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gaocheng.pojo.vo.ChapterVO;

import java.util.List;

/**
* @author gaocheng
* @description 针对表【t_chapter(章节表)】的数据库操作Service
* @createDate 2022-03-21 23:40:10
*/
public interface ChapterService extends IService<Chapter> {

    List<ChapterVO> getChapterVOS(Integer repoId);

    Boolean saveChapters(List<Chapter> chapters);

}
