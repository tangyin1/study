package com.gaocheng.controller.student;

import com.gaocheng.controller.admin.AdminRecordController;
import com.gaocheng.pojo.dto.QueryPageRecordDTO;
import com.gaocheng.other.result.BaseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: 高诚
 * @Description:
 */
@RestController
@RequestMapping("/student/record")
public class StudentRecordController {

    @Autowired
    AdminRecordController adminRecordController;

    @GetMapping("/queryPage")
    public BaseResult queryPage(QueryPageRecordDTO queryPageRecordDTO) {
        return adminRecordController.queryPage(queryPageRecordDTO);
    }

}
