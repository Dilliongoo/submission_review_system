<%@ page import="cn.zzd.entity.Author" %>
<%@ page import="cn.zzd.entity.Reviewer" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% Reviewer reviewer = (Reviewer) session.getAttribute("reviewer");%>

<!DOCTYPE html>
<html>
<%@include file="/components/head.jsp" %>
<style>
    .footer {
        position: absolute;
        bottom: 0;
        width: 100%;
        height: 100px;
        font-size: 20px;
        color: yellow;
    }
    body{

        background-image: url("../img/003.png");
        background-size: 100%;

    }

</style>
<body>

<div class="mdui-row"
     style="margin-right: 0px;
            margin-left: 0px; ">
    <div class="mdui-appbar mdui-ripple background-color height"
         style="--color:rgb(63,81,181);--height: 4rem">
        <a href="<%=host%>" class="mdui-typo-headline mdui-text-color-white"
           style="margin: 1rem;padding:0rem;"><%=siteName%>
        </a>
        <a href="<%=host%>/api/login" class="mdui-typo-headline mdui-text-color-white"
           style="margin: 1rem;padding:0rem;">审稿人</a>
    </div>
</div>
<div class="flex mdui-col-md-12"
     style="--flex-direction: column; --justify-content: center; --align-items: center;">
    <h1 class="doc-title mdui-text-color-theme">基本信息</h1>
    <h2>姓名：<%=reviewer.getName_()%>
    </h2>
    <h2>联系方式：<%=reviewer.getContact()%>
    </h2>
    <h2>总收益：<%=reviewer.getTotal()%>
    </h2>

    <div class="mdui-col-md-6 flex"
         style="--flex-direction: row; --justify-content: space-around; --align-items: center;">
        <form method="get" action="<%=host%>/api/pending">
            <button class="mdui-btn mdui-color-pink-accent mdui-ripple" type="submit">查看待审稿件</button>
        </form>
        <form method="get" action="<%=host%>/api/reviewer">
            <button class="mdui-btn mdui-color-pink-accent mdui-ripple" type="submit">我的审稿记录</button>
        </form>
        <form method="get" action="<%=host%>/pages/reviewer-information-modify.jsp">
            <button class="mdui-btn mdui-color-pink-accent mdui-ripple" type="submit">修改个人信息</button>
        </form>
    </div>
</div>
<div class="footer" align="center">

    <span>©️2020 ZBDX</span>
    <span>在线投稿审稿系统</span>
    <span> 设计师:
                                          张振东，乔保杰，王琛琪                                  </span>


</div>
</body>
</html>