<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
       <jsp:useBean id="arrayExample" class="demo.Student" />
       <%  
       int[] nums={10,20,30,40,50};
       arrayExample.setMarks(nums);
       %>
<html>
<head>
    <title>Using JavaBeans in JSP</title>
</head>
<body>
    <center>
        <h2>Using JavaBeans in JSP</h2>
        <jsp:useBean id="test" class="demo.TestBean" />
        <jsp:setProperty name="test" property="message" value="Hello JSP..." />

        <p>Got message....</p>
        <jsp:getProperty name="test" property="message" />
        <br>
        <jsp:getProperty name="test" property="name"/>
        
        <jsp:useBean id="test1" class="demo.Student" />
        <jsp:setProperty name="test1" property="name" value="Manikandan" />

        <p>Got message....</p>
        <jsp:getProperty name="test1" property="name" />
        <form action="HelloWorld.jsp" method="get">
             <button type="submit">Click Here</button>
       </form>
       <%
         int[]marks=arrayExample.getMarks();
         for(int i:marks){  %>
            <%= i %>
         <% 
         }
       %>
               <form action="ArrayHandler.jsp" method="get">
             <button type="submit">Click Here</button>
       </form>
    </center>
</body>
</html>