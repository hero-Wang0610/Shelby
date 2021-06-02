package com.bjpowernode.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author herowang
 * @create 2021-06-02 16:02
 */
public class MyServlet02 extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("学生模块相关操作");
        String path = req.getServletPath();
        if ("/student/save.do".equals(path)) {
            save(req,resp);
        }else if ("/student/update.do".equals(path)){
            update(req,resp);
        }else if ("/student/delete.do".equals(path)){
            delete(req,resp);
        }else if ("/student/select.do".equals(path)){
            select(req,resp);
        }
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("删除操作成功");
    }

    private void update(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("更新操作成功");
    }

    private void select(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("查询操作成功");
    }

    private void save(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println("增加操作成功");
    }
}
