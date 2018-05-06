<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.google.cloud.datastore.Datastore" %>
<%@page import="com.google.cloud.datastore.DatastoreOptions" %>
<%@page import="com.google.cloud.datastore.Entity" %>
<%@page import="com.google.cloud.datastore.Key" %>
<%@page import="com.google.cloud.datastore.Query" %>
<%@page import="com.google.cloud.datastore.QueryResults" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>

<html>
<body>
<%
Datastore datastore = DatastoreOptions.getDefaultInstance().getService();
Query<Key> query = Query.newKeyQueryBuilder().setKind("__kind__").build();
QueryResults<Key> results = datastore.run(query);
while (results.hasNext()) {
  out.println(results.next().getName());
  }
%>
<footer>
        <h2>This page is related to OSreeHariRaju.</h2>
        <a href="index.html">Back to Home</a>
</footer>
</body>
</html>
