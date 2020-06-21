<%@ page import="cn.zzd.dao.impl.ReviewerDaoImpl" %>
<%@ page import="cn.zzd.entity.Reviewer" %>
<%
    request.setCharacterEncoding("utf-8");

    new ReviewerDaoImpl().save(new Reviewer(request.getParameter("id"), request.getParameter("account_"), request.getParameter("password_"), request.getParameter("name_"), request.getParameter("contact"), Long.parseLong(request.getParameter("total"))));

    response.sendRedirect( "/pages/admin-reviewer.jsp");

%>