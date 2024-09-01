package com.gaocheng.controller.admin;

import com.gaocheng.pojo.po.Chapter;
import com.gaocheng.other.result.BaseResult;
import com.gaocheng.other.result.PageResult;
import com.gaocheng.pojo.vo.ChapterVO;
import com.gaocheng.service.ChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: 高诚
 * @Description:
 */
@RestController
@RequestMapping("/admin/chapter")
public class AdminChapterController {

    @Autowired
    ChapterService chapterService;

    /**
     * 查询所有
     * @return 对象列表
     */
    @GetMapping(value = "/queryChapters")
    public PageResult queryChapters(Integer repoId){
        List<ChapterVO> chapterVOS =  chapterService.getChapterVOS(repoId);
        return PageResult.success((long) chapterVOS.size(), chapterVOS);
    }

    /**
     * 保存全部
     * @param chapters
     * @return
     */
    @PostMapping(value = "/saveChapters")
    public BaseResult saveChapters(@RequestBody List<Chapter> chapters){
        return BaseResult.boolResult(chapterService.saveChapters(chapters));
    }

}
