<%@ page import="cn.zzd.dao.impl.AuthorDaoImpl" %>
<%@ page import="cn.zzd.entity.Author" %>
<%@ page import="cn.zzd.util.Config" %>
<%
    request.setCharacterEncoding("utf-8");

    new AuthorDaoImpl().save(new Author(request.getParameter("id"), request.getParameter("account_"), request.getParameter("password_"), request.getParameter("name_"), request.getParameter("contact")));

    response.sendRedirect( "/pages/admin-author.jsp");

%>