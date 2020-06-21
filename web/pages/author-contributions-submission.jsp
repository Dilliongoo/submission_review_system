<%@ page import="cn.zzd.entity.Author" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

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
           style="margin: 1rem;padding:0rem;">作家园</a>
    </div>
</div>
<div class="flex mdui-col-md-12 "
     style="--flex-direction: column; --justify-content: center; --align-items: center;">

    <form class="flex mdui-col-md-6" method="post" action="<%=host%>/api/submission">
        <div class="mdui-textfield mdui-col-md-12">
            <label class="mdui-textfield-label">文章标题</label>
            <textarea class="mdui-textfield-input" name="name_"></textarea>
        </div>

        <div class="mdui-textfield mdui-col-md-12">
            <textarea class="mdui-textfield-input" placeholder="这里填写文章内容" name="content"></textarea>
        </div>

        <button class="mdui-btn mdui-color-pink-accent mdui-ripple" type="submit">存为草稿</button>
    </form>

</div>
<div class="footer" align="center">

    <span>©️2020 ZBDX</span>
    <span>在线投稿审稿系统</span>
    <span> 设计师:
                                          张振东，乔保杰，王琛琪                                  </span>


</div>
</body>
</html>