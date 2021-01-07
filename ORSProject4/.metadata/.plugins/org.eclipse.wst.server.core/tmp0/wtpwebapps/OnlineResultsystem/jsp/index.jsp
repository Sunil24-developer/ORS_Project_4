 <%@page import="in.co.controller.ORSView"%> 
<html>
<head>
<link rel="icon" type="image/png" href="<%=ORSView.APP_CONTEXT%>/img/logo.png" />
<title>Index Page</title>
</head>
<body>
<%@ include file="Header.jsp"%>
<a href=""><b>Home</b></a>&nbsp;&nbsp;&nbsp;
<a href="<%=ORSView.LOGIN_CTL%>>"><b>Login</b></a>&nbsp;&nbsp;&nbsp;

<%-- <a href="<%=ORSView.LOGIN_CTL%> >"><b>Login</b></a>&nbsp;&nbsp;&nbsp; --%>
    <form action="">
        <h1 align="Center">
            <font size="10px" color="red">Welcome to ORS </font>
        </h1>
        <br> <br> <a href="<%=ORSView.WELCOME_CTL%>"><b>Click Here
                </b></a>


        <%@ include file="Footer.jsp"%>
</body>
</html>
