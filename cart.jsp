<%@ page import="java.util.*"  %>
<head>
<title>Insert title here</title>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<%
	String laptops[] = request.getParameterValues("laptops");
	String storage[] = request.getParameterValues("storage");
	
	ArrayList<String> cartLaptops = (ArrayList<String>) session.getAttribute("cartLaptops");
	ArrayList<String> cartStorage = (ArrayList<String>) session.getAttribute("cartStorage");
	
	if(cartLaptops == null) {
		cartLaptops = new ArrayList<String>();
	}
	if(cartStorage ==  null) {
		cartStorage = new ArrayList<String>();
	}
	
	for(int i=0;i<laptops.length;i++)
		cartLaptops.add(laptops[i]);
	
	for(int i=0;i<storage.length;i++)
		cartStorage.add(storage[i]);
	
	session.setAttribute("cartLaptops", cartLaptops);
	session.setAttribute("cartStorage", cartStorage);
	
	//out.println("You have the following items in the cart:<br/>");
%>
	
	<div class="panel panel-primary">
		<div class="panel-heading">
			Laptops	
		</div>
		<div class="panel-body">
			<ul>
<%
				for(String str: cartLaptops) {
%>	
					<li><%= str %></li>
<%	
				}
%>
			</ul>		
		</div>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			Storage	
		</div>
		<div class="panel-body">
			<ul>
<%
				for(String str: cartStorage) {
%>	
					<li><%= str %></li>
<%	
				}
%>
			</ul>		
		</div>
	</div>
	
	<a href="products.html">Click</a>
</body>
</html>