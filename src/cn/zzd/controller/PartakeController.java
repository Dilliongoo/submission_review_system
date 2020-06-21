package cn.zzd.controller;

import cn.zzd.dao.impl.ContributionDaoImpl;
import cn.zzd.dao.impl.SubmissionDaoImpl;
import cn.zzd.entity.Author;
import cn.zzd.entity.Contribution;
import cn.zzd.entity.Submission;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;



@WebServlet(urlPatterns = "/api/partake")
public class PartakeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String id = req.getParameter("id");
        HttpSession session = req.getSession(true);
        Author author = (Author) session.getAttribute("author");
        try {
            List<Contribution> uni = new ContributionDaoImpl().findUni(author.getId(), id);

            if (uni.size() != 0) {
                resp.setHeader("refresh", "0;URL=/"  + "pages/success.jsp");
                return;
            } else {
                List<Submission> submissions = new SubmissionDaoImpl().findBy("id", id);
                if (submissions.size() == 0) {
                    resp.setHeader("refresh", "0;URL=/" + "pages/error.jsp");
                    return;
                } else {
                    new ContributionDaoImpl().save(new Contribution("", author.getId(), id));
                }
            }
            resp.sendRedirect( "/api/contribution");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
