package com.gaocheng.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gaocheng.pojo.po.Option;
import com.gaocheng.service.OptionService;
import com.gaocheng.mapper.OptionMapper;
import org.springframework.stereotype.Service;

/**
* @author gaocheng
* @description 针对表【t_option(题目选项表)】的数据库操作Service实现
* @createDate 2022-03-27 14:52:54
*/
@Service
public class OptionServiceImpl extends ServiceImpl<OptionMapper, Option>
    implements OptionService {

}




