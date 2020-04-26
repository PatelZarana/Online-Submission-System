
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<html>
    <body>
        <sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/os2" 
                           user="root" password="root"/>
        
           
            <sql:update var="query" dataSource="${DS}">
               insert into student_submit(En_No,Sub_Code,File_No,File_Submit)values(?,?,?,?);
                <sql:param value="${param.En_No}"/>
                <sql:param value="${param.Sub_Code}"/>
                <sql:param value="${param.File_No}"/>
                <sql:param value="${param.File_Submit}"/>
                
            </sql:update>    
            <c:out value="Student Submitted File Successfully"/>
            
   </body>
</html>
