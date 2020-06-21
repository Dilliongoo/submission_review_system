package cn.zzd.controller;

import cn.zzd.util.Jdbc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(urlPatterns = "/db/back")
public class BackupController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            new Jdbc().backup();
        } catch (Exception e) {
            e.printStackTrace();
        }
        resp.sendRedirect("/pages/admin.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            new Jdbc().restore();
        } catch (Exception e) {
            e.printStackTrace();
        }
        resp.sendRedirect( "/pages/admin.jsp");
    }
}
