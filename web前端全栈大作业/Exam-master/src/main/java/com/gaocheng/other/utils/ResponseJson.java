package com.gaocheng.other.utils;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gaocheng.other.result.BaseResult;

import javax.servlet.http.HttpServletResponse;

/**
 * @Author: 高诚
 * @Date:  2023/09 2022/09/18/21:45
 * @Description:
 */
public class ResponseJson {

    public static void errorMsg(HttpServletResponse response, String msg) throws Exception {
        BaseResult baseResult = BaseResult.errorMsg(msg);
        String json = new ObjectMapper().writeValueAsString(baseResult);
        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().println(json);
    }

}
