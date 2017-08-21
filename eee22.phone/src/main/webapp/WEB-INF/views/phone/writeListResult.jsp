<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8" /> 
    <style>
        table, td, th { border: 1px solid green; }        
        th { background-color: green; color: white; }
    </style>
</head>
<body>
    
    <table>
        <tr>
            <th>no</th>
            <th>name</th>
            <th>manufacturer</th>
            <th>price</th>
        </tr>
        
        <!--  반복 구간 시작 -->
        <c:forEach var="phone" items="${list }" varStatus="status"> 
        <tr>
            <td>${status.index}</td>
            <td>${phone.phname}</td>
            <td>${phone.phfactory}</td>
            <td>${phone.phprice}</td>
        </tr>
        </c:forEach>
        <!--  반복 구간 끝 -->
    </table> 

</body>
</html>