<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<html>
    <body>
        <sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/os2" 
                           user="root" password="root"/>
        
           
            <sql:update var="query" dataSource="${DS}">
                UPDATE faculty SET Sub_Code=? WHERE F_Id='${param.F_Id}'
                <sql:param value="${param.Sub_Code}"/>
            </sql:update>   
            <c:out value="Faculty Sub_Code updated successfully"/>
            
   </body>
</html>
