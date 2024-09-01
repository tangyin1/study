package com.gaocheng.service;

import com.gaocheng.pojo.dto.SavePaperDTO;
import com.gaocheng.pojo.po.Paper;
import com.gaocheng.pojo.vo.PaperInfoVO;
import com.gaocheng.pojo.vo.PaperQuestionVO;
import com.gaocheng.pojo.vo.PaperVO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
* @author gaocheng
* @description 针对表【t_paper(试卷表)】的数据库操作Service
* @createDate 2022-03-28 11:25:29
*/
public interface PaperService extends IService<Paper> {

    void savePaper(SavePaperDTO savePaperDTO);

    PaperVO getPaperVO(Integer paperId);
    List<List<PaperQuestionVO>> getPaperQuestionVOListList(Integer paperId);

    PaperInfoVO getPaper(Integer paperId);

    void removePaper(Paper paper);
}
