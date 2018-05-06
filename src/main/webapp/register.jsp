<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.google.cloud.datastore.Datastore" %>
<%@page import="com.google.cloud.datastore.DatastoreOptions" %>
<%@page import="com.google.cloud.datastore.Entity" %>
<%@page import="com.google.cloud.datastore.Key" %>
<%@page import="com.google.cloud.datastore.Query" %>
<%@page import="com.google.cloud.datastore.*" %>

<html>
<body>
<%
String fname=request.getParameter("Fname");
String mno=request.getParameter("mno");
String pwd=request.getParameter("pwd");
out.println("<h3> Thankyou "+fname+"</h3>");

//Using Datastore
Datastore datastore = DatastoreOptions.getDefaultInstance().getService();
String kind = "Contacts";
Key taskKey = datastore.newKeyFactory().setKind(kind).newKey(fname);
// Prepares the new entity
    Entity task = Entity.newBuilder(taskKey)
        .set("Mobile", mno)
        .set("Passwd",pwd)
        .build();
// Saves the entity
    datastore.put(task);
out.println("Your data has been saved/updated (if name already exists).");
%>
<footer align="center">
        <a href="index.html">Goto Home</a>
        <a href="contacts.jsp">See Contacts</a>
</footer>
</body>
</html>
