<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-01-03
  Time: 오후 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글 상세</title>
</head>
<body>
<center>
  <h1>게시글 상세</h1>
  <hr>
  <form action="updateBoard" method="post">
    <input name="seq" type="hidden" value="${board.seq }"/>
    <table border="1" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="orange" width="70">제목</td>
        <td align="left"><input name="title" type="text" value="${board.title}"/></td>
      </tr>
      <tr>
        <td bgcolor="orange">작성자</td>
        <td align="left">${board.writer}</td>
      </tr>
      <tr>
        <td bgcolor="orange">내용</td>
        <td align="left"><textarea name="content" cols="40" rows="10">${board.content}</textarea></td>
      </tr>
      <tr>
        <td bgcolor="orange">등록일</td>
        <td align="left"><fmt:formatDate value="${board.createDate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
      </tr>
      <tr>
        <td bgcolor="orange">조회수</td>
        <td align="left">${board.cnt }</td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <input type="submit" value="글 수정"/></td>
      </tr>
    </table>
  </form>
  <hr>
  <a href="insertBoard">글등록</a>&nbsp;&nbsp;&nbsp;
  <a href="deleteBoard?seq=${board.seq}">글삭제</a>&nbsp;&nbsp;&nbsp;
  <a href="getBoardList">글목록</a>
</center>
</body>
</html>
