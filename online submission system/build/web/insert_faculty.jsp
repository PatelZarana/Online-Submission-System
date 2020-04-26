<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<html>
    <body>
        <sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/os2" 
                           user="root" password="root"/>
        
           
            <sql:update var="query" dataSource="${DS}">
                insert into faculty(F_Id,F_Name,Sub_Code,F_Email_Id) Value(?,?,?,?);
                <sql:param value="${param.F_Id}"/>
                <sql:param value="${param.F_Name}"/>
                <sql:param value="${param.Sub_Code}"/>
                <sql:param value="${param.F_Email_Id}"/>
            </sql:update>    
            <c:out value="Faculty Details inserted successfully"/>
            
   </body>
</html>
