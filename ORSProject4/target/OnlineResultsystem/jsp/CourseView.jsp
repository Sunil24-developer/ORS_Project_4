<%@page import="in.co.sunrays.proj4.util.HTMLUtility"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="in.co.sunrays.proj4.controller.CourseCtl"%>
<%@page import="in.co.sunrays.proj4.controller.BaseCtl"%>
<%@page import="in.co.sunrays.proj4.util.DataUtility"%>
<%@page import="in.co.sunrays.proj4.util.ServletUtility"%>
<html>
<head>
<title>User</title>
<style type="text/css">
.panel-default1 {
	border-color: red;
}

.panel1 {
	background-color: #cdcd9c;
	/* background: -webkit-linear-gradient(top, #000000,#7579ff, #000000); */
	border: 1px solid black;
	border-radius: 4px;
	width: 900px -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 5px black;
}

#in {
	position: initial;
	z-index: 2;
	float: left;
	width: 100%;
	margin-bottom: 0;
}

.panel-heading {
	color: white;
	/*  background-color: #56562c; */
	background: -webkit-linear-gradient(top, #000000, #7579ff, #000000);
	border-color: #151414;
	height: 50px;
	align-items: center;
}

.panel-title1 {
	margin-top: 5px;
	margin-bottom: 0;
	font-size: 22px;
	color: white;
}

.container1 {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto
}

@media ( min-width :768px) {
	.container1 {
		width: 750px
	}
}

@media ( min-width :992px) {
	.container1 {
		width: 970px
	}
}

@media ( min-width :1200px) {
	.container1 {
		width: 700px;
	}
}

input[type=text], input[type=password], input[type=select], input[type=email],
	textarea {
	background: #ffffff;
	font-size: 16;
	font-family: arial;
	color: black;
	display: block;
	border-radius: 3px;
	border: 0;
	padding: 5px 10px;
	width: auto;
	margin-bottom: 0;
	box-shadow: 0px 0px 0px 1px #c0c0c0, 0px 1px 1px #c0c0c0;
}
</style>
</head>
<body>
	<form action="<%=ORSView.COURSE_CTL%>" method="post">
		<%@ include file="Header.jsp"%>

		<jsp:useBean id="bean" class="in.co.sunrays.proj4.bean.CourseBean"
			scope="request"></jsp:useBean>

		<div align="center">
			<h1 align="center" style="margin-bottom: -15; color: navy">
				<%
					if (bean != null && bean.getId() > 0) {
				%>Update<%
					} else {
				%>Add<%
					}
				%>
				Course
			</h1>

			<div style="height: 15px; margin-bottom: 12px">
				<H3 align="center">
					<font color="green"> <%=ServletUtility.getSuccessMessage(request)%>
					</font>
				</H3>
				<H3 align="center">
					<font color="red"> <%=ServletUtility.getErrorMessage(request)%>
					</font>
				</H3>
			</div>

			<input type="hidden" name="id" value="<%=bean.getId()%>"> <input
				type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
			<input type="hidden" name="modifiedBy"
				value="<%=bean.getModifiedBy()%>"> <input type="hidden"
				name="createdDatetime"
				value="<%=DataUtility.getTimestamp(bean.getCreatedDatetime())%>">
			<input type="hidden" name="modifiedDatetime"
				value="<%=DataUtility.getTimestamp(bean.getModifiedDatetime())%>">
			<table>
				<tr>
					<th align="left">Name<span style="color: red">*</span></th>
					<td align="center"><input type="text" name="name"
						placeholder="Enter Course Name"
						value="<%=DataUtility.getStringData(bean.getName())%>" style="width: 171px"></td>
					<td style="position: fixed;"><font color="red"> <%=ServletUtility.getErrorMessage("name", request)%></font></td>
				</tr>
				<tr>
					<th align="left">Duration<span style="color: red">*</span></th>
					<td>
						<%
							LinkedHashMap<String, String> map1 = new LinkedHashMap<String, String>();
							map1.put("1 Year", "1 Year");
							map1.put("2 Years", "2 Years");
							map1.put("3 Years", "3 Years");
							map1.put("4 Years", "4 Years");
							map1.put("5 Years", "5 Years");
							map1.put("6 Years", "6 Years");
							map1.put("7 Years", "7 Years");

							String htmlList1 = HTMLUtility.getList("duration", bean.getDuration(), map1);
						%> <%=htmlList1%>
					</td>
					<td style="position: fixed;"><font color="red"> <%=ServletUtility.getErrorMessage("duration", request)%></font></td>
				</tr>

				<tr>
					<th align="left">Description<span style="color: red">*</span></th>
					<td align="center"><textarea style="width: 173px; resize: none;"
							name="description" rows="3" placeholder="Enter Short description"><%
								if (bean != null && bean.getId() > 0) {
							%><%=DataUtility.getStringData(bean.getDescription())%><%
								}
							%></textarea></td>
					<td style="position: fixed;"><font color="red"> <%=ServletUtility.getErrorMessage("description", request)%></font></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<%
						if (bean != null && bean.getId() > 0) {
					%>
					<td align="left" colspan="2"><input type="submit"
						name="operation" value="<%=CourseCtl.OP_UPDATE%>"> <input
						type="submit" name="operation" value="<%=CourseCtl.OP_CANCEL%>">
						<%
							} else {
						%>
					<td align="left" colspan="2"><input type="submit"
						name="operation" value="<%=CourseCtl.OP_SAVE%>"> <input
						type="submit" name="operation" value="<%=CourseCtl.OP_RESET%>">
						<%
							}
						%>
				</tr>
			</table>
		</div>
	</form>

	<%@ include file="Footer.jsp"%>
</body>
</html>