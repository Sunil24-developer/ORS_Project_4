
<%@page import="in.co.util.ServletUtility"%>
<%@page import="in.co.controller.ORSView"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ORS</title>
</head>
<body>
 <div align="center">
<img src="/OnlineResultsystem/img/sun.jpg" width="200" height="87" align="center" border="0">
</div>

<h2 align="Center">
        <font size="10px" >
        <%
        if(ORSView.LOGIN_CTL.equals(ORSView.LOGIN_CTL)){%>
        
        	<a href="<%=ORSView.WELCOME_CTL%>" >Online Result System</font> <br> <br>
        <%}else{ 
        System.out.println("hello");
        }%>
        
    </h2>
    <!-- style="text-decoration: none"  used To remove Line-->
</body>
</html>