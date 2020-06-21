<%@ page import="java.util.List" %>
<%@ page import="cn.zzd.dao.impl.ContributionDaoImpl" %>
<%@ page import="cn.zzd.entity.Contribution" %>
<%@ page import="cn.zzd.util.Config" %>
<%@ page import="cn.zzd.entity.Submission" %>
<%@ page import="cn.zzd.dao.impl.SubmissionDaoImpl" %>
<%@ page import="cn.zzd.dao.impl.OrderDaoImpl" %>
<%@ page import="cn.zzd.entity.Order" %>
<%
    try {
        List<Submission> by = new SubmissionDaoImpl().findBy("id", request.getParameter("id"));
        if (by.size() != 0) {
            Submission submission = by.get(0);
            String id = submission.getId();
            List<Contribution> submission_id = new ContributionDaoImpl().findBy("submission_id", id);
            for (Contribution contribution : submission_id) {
                new ContributionDaoImpl().delete(contribution);
            }
            List<Order> submission_id1 = new OrderDaoImpl().findBy("submission_id", id);
            for (Order order : submission_id1) {
                new OrderDaoImpl().delete(order);
            }
            new SubmissionDaoImpl().delete(submission);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("/pages/admin-submission.jsp");
%>