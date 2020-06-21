<%@ page import="cn.zzd.entity.Reviewer" %>
<%@ page import="cn.zzd.dao.impl.ReviewerDaoImpl" %>
<%
    request.setCharacterEncoding("utf-8");

    new ReviewerDaoImpl().save(new Reviewer("", request.getParameter("account_"), request.getParameter("password_"), request.getParameter("name_"), request.getParameter("contact"), Long.parseLong("0")));

    response.sendRedirect("/pages/admin-reviewer.jsp");

%>