<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>Customer Form</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>
<div id="wrapper">
<div id="header">
<h2>CRM - Customer Relationship Management</h2>
</div>
<div id="container">
<h3>Customer Form</h3>
<form:form action="saveCustomer" modelAttribute="customers" method="POST" >

<!-- Adding hidden field for tracking id for record to be update: UPDATE -->
<form:hidden path="id"/>
<table>
<tbody>
<tr>
<td><label>First Name:</label></td>
<td><form:input path="firstName"/></td>
</tr>
<tr>
<td><label>Last Name:</label></td>
<td><form:input path="lastName"/></td>
</tr>
<tr>
<td><label>Email:</label></td>
<td><form:input path="email"/></td>
</tr>
<tr>
<td><label></label></td>
<td><input type="submit" value = "Save"/></td>
</tr>
</tbody>
</table>

</form:form>
<div style=clear;both;>
<p><a href="${pageContext.request.contextPath}/customer/list">Back to List</a></p>
</div>
</div>
</div>
</body>

</html>