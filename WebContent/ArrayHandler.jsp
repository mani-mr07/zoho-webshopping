<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="numBean" class="demo.Student" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Array Values</title>
</head>
<body>
   <%
    String input = request.getParameter("numbers");
    boolean hasInput = input != null && !input.trim().isEmpty();
    
    if (hasInput) {
        String[] parts = input.split(",");
        int[] arr = new int[parts.length];
        for (int i = 0; i < parts.length; i++) {
            arr[i] = Integer.parseInt(parts[i].trim());
        }
        numBean.setMarks(arr);
    }
    %>
    
    <h2>Enter comma-separated numbers:</h2>
<form method="post">
    <input type="text" name="numbers" value="<%= (input != null) ? input : "" %>" placeholder="e.g., 1,2,3">
    <button type="submit">Submit</button>
</form>

<% if (hasInput) { %>
    <h2>Output:</h2>
    <ul>
        <%
            for (int num : numBean.getMarks()) {
        %>
            <li><%= num %></li>
        <%
            }
        %>
    </ul>
<% } %>
    

   

</body>
</html>