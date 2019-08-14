<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,com.example.SpringBoot.Model.Company"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Companies</title>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>
	<%
		List companyList = (List) request.getAttribute("companyList");
		System.out.println(companyList);
	%>

<div style="overflow-x:auto;">
	<table>
		<tr>
			<b><td>Code</td></b>
			<b><td>Company name</td></b>
			<b><td>Turnover</td></b>
			<b><td>CEO</td></b>
			<b><td>Board of Directors</td></b>
			
			<b><td>Brief Writeup</td></b>
			<b><td>Update</td></b>
			

		</tr>

		<%
			for (int i = 0; i < companyList.size(); i++) {
				Company e = (Company) companyList.get(i);
		%>
		<tr>
			<td><%=e.getCompanyCode()%></td>
			<td><%=e.getCompanyName()%></td>
			<td><%=e.getTurnover()%></td>
			<td><%=e.getCeo()%></td>
			<td><%=e.getBoardOfDirectors()%></td>
			
			<td><%=e.getBriefWriteup()%></td>
			<td><a href="updateCompany?cid=<%=e.getCompanyCode()%>">Update</a></td>
			


		</tr>
		<% }%>

	</table>
</div>

</body>
</html>