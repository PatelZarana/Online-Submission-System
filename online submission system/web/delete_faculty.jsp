<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<html>
    <body>
        <sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/os2" 
                           user="root" password="root"/>
        
           
            <sql:update var="query" dataSource="${DS}">
                delete from faculty where F_Id=${param.F_Id};
            </sql:update>    
            <c:out value="Faculty Details Deleted successfully"/>
            
   </body>
</html>

