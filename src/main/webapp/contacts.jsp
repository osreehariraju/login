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

  <title>OSreeHariRaju GoogleAppEngine - Contacts</title>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <style>
    .header{
      background-color: #e5e0de;
    }
    .footer {
      position: fixed;
      left: 0;
      bottom: 0;
      width: 100%;
      color: white;
      text-align: center;
    }
    .linklist{
      text-align: center;
      left: 0;
      width: 100%;
      color: Green;
    }
    a {
      text-decoration: none
    }
  </style>

  <body>
    <!-- Header -->
    <div class=header id="home">
    <header class="w3-container w3-center w3-padding-12">
      <h1><b><a href="#home"><u>Contacts</u></a></b></h1>
      <p>O SreeHari Raju - Google App Engine</p>
    </header>
    </div>

    <!-- List of contacts -->
    <div class="linklist">
      <table style="list-style-type:none" align="center">
              <tr><th>Full Name</th><th>Mobile number</th></tr>
<%
Datastore datastore = DatastoreOptions.getDefaultInstance().getService();
Query<Key> query = Query.newKeyQueryBuilder().setKind("Contacts").build();
QueryResults<Key> results = datastore.run(query);
while (results.hasNext()) {
  out.println("<tr>");
  Entity row = datastore.get(results.next());
  out.println("<td> "+row.getKey().getName()+" </td><td> "+row.getString("Mobile")+" </td>");
  out.println("</tr>");
}
%>
      </table>
          <a href="index.html">Home</a>
    </div>

    <!-- Footer -->
    <div class=footer>
      <footer class="w3-center w3-black w3-padding-24 w3-opacity w3-hover-opacity-off">
      <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
      <div class="w3-xlarge w3-section">
      <i class="fa fa-facebook-official w3-hover-opacity"></i>
      <i class="fa fa-instagram w3-hover-opacity"></i>
      <i class="fa fa-twitter w3-hover-opacity"></i>
      <i class="fa fa-linkedin w3-hover-opacity"></i>
      </div>
      </footer>
    </div>
  </body>

</html>
