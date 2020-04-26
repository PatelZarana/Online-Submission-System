<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
    
        <sql:setDataSource var="stud" 
                   driver="com.mysql.jdbc.Driver" 
                   url="jdbc:mysql://localhost:3306/xyz" 
                   user="root"
                   password="root"/>
        
        <sql:update var="query"
                    dataSource="${stud}">
           
            update student set Upload_File="${param.Upload_File}" where File_ID="${param.File_Id}",F_Id="${param.F_Id}",Sub_Code="${param.Sub_Code}"";
            
            
            <%--<sql:param value="${param.En_No}"/>
            <sql:param value="${param.Name}"/>
            <sql:param value="${param.Sem}"/>
            <sql:param value="${param.Branch}"/>
            <sql:param value="${param.Email}"/>
            --%>
        </sql:update>
 
    </body>
</html>
