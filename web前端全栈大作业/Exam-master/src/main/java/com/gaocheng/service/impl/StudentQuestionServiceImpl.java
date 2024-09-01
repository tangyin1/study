package com.gaocheng.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gaocheng.pojo.po.StudentQuestion;
import com.gaocheng.service.StudentQuestionService;
import com.gaocheng.mapper.StudentQuestionMapper;
import org.springframework.stereotype.Service;

/**
* @author gaocheng
* @description 针对表【s_student_question(学生答题表)】的数据库操作Service实现
* @createDate 2022-04-10 13:50:27
*/
@Service
public class StudentQuestionServiceImpl extends ServiceImpl<StudentQuestionMapper, StudentQuestion>
    implements StudentQuestionService {

}




