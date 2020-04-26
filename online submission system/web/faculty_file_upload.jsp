
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<html>
    <body>
        <sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/os2" 
                           user="root" password="root"/>
        
           
            <sql:update var="query" dataSource="${DS}">
                insert into file_upload(F_Id,Sub_Code,File_No,Due_Date,Sem,Upload_File)values(?,?,?,?,?,?);
                <sql:param value="${param.F_Id}"/>
                
                <sql:param value="${param.Sub_Code}"/>
                
                <sql:param value="${param.File_No}"/>
                
                 <sql:param value="${param.Due_Date}"/>
               <sql:param value="${param.Sem}"/>
                <sql:param value="${param.Upload_File}"/>
            </sql:update>    
            <c:out value="Faculty Files  uploaded successfully"/>
            
   </body>
</html>
