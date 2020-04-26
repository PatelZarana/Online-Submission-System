<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<html>
    <body>
        <sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/os2" 
                           user="root" password="root"/>
        
           
            <sql:update var="query" dataSource="${DS}">
                UPDATE student SET Sem=? WHERE En_No='${param.En_No}'
                <sql:param value="${param.Sem}"/>
            </sql:update>    
            <c:out value="Student Sem updated successfully"/>
            
   </body>
</html>
