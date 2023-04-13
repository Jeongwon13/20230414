
<%@ page language="java" contentType= "text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
	
	</header>
    <main>
        <a href="${contextPath}/board/boardForm"><button>글쓰기</button></a>
        <table border="1px solid black">
            <thead>
                <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>날짜</th>
                <th>조회수</th>
            </tr>
            </thead>
            <tbody>
                <c:choose>
                	<c:when test="${not empty list}">
                		
                		<c:forEach var="board" items="${list}">
                		<tr>	 
                			<td><a href="#">${board.num}</a></td>
                			<td><a href="#">${board.title}</a></td>
                			<td><a href="#">${board.writer}</a></td>
                			<td><a href="#">${board.regdate}</a></td>
                			<td><a href="#">${board.cnt}</a></td>
                		</tr>
                		</c:forEach>
               	</c:when>
               	
            	<c:otherwise>
            	<tr>
            		<td colspan="5">검색 결과가 없습니다.</td>
            	</tr>
            	</c:otherwise>
                </c:choose>
            </tbody>
        </table>

    </main>

</body>
</html>