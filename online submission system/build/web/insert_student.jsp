<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
    
        <sql:setDataSource var="stud" 
                   driver="com.mysql.jdbc.Driver" 
                   url="jdbc:mysql://localhost:3306/os2" 
                   user="root"
                   password="root"/>
        
        <sql:update var="query"
                    dataSource="${stud}">
           
            insert into student(En_No,Name,Sem,Branch,Email) values(?,?,?,?,?);
            
            <sql:param value="${param.En_No}"/>
            <sql:param value="${param.Name}"/>
            <sql:param value="${param.Sem}"/>
            <sql:param value="${param.Branch}"/>
            <sql:param value="${param.Email}"/>
        
        </sql:update>
 <c:out value="Student Details inserted successfully"/>
    </body>
</html>
