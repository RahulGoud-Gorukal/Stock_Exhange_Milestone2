<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,com.example.SpringBoot.Model.StockExchange"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying the stock lists</title>
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

tr:nth-child(even) {
	background-color: #f2f2f2
}
</style>
</head>
<body>
	<%
		List stockList = (List) request.getAttribute("stockList");
		System.out.println(stockList);
	%>

	<div style="overflow-x: auto;">
		<table>
			<tr>
				<td>Stock ID</td>
				<td>Stock name</td>
				<td>Brief</td>
				<td>Contact Address</td>
				<td>Remarks</td>
			</tr>

			<%
				for (int i = 0; i < stockList.size(); i++) {
					StockExchange se = (StockExchange) stockList.get(i);
			%>
			<tr>
				<td><%=se.getStockExchangeId()%></td>
				<td><%=se.getStockExchangeName()%></td>
				<td><%=se.getBrief()%></td>
				<td><%=se.getContactAddress()%></td>
				<td><%=se.getRemarks()%></td>
			</tr>
			<%
				}
			%>

		</table>
	</div>

</body>
</html>