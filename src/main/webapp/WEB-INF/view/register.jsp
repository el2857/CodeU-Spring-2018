<!DOCTYPE html>
<html>
<head>
 <title>Register</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <link rel="icon" type="image/x-icon" href="../../favicon.ico?v=2">
  <link rel="stylesheet" href="/css/main.css">
 <style>
   label {
     display: inline-block;
     width: 100px;
   }
 </style>
</head>
<body>

<nav>
  <a id="navTitle" href="/">Squeak Speak</a>
 <a href="/conversations">Conversations</a>
 <% if(request.getSession().getAttribute("user") != null){ %>
   <a>Hello <%= request.getSession().getAttribute("user") %>!</a>
 <% } else{ %>
   <a href="/login">Login</a>
   <a href="/register">Register</a>
 <% } %>
 <a href="/about.jsp">About</a>
 <a href="/testdata">Load Test Data</a>
</nav>
<br>
 <div id="container">
   <h1>Register</h1>

   <% if(request.getAttribute("error") != null){ %>
       <h2 style="color:red"><%= request.getAttribute("error") %></h2>
   <% } %>

   <form action="/register" method="POST">
     <label for="username">Username: </label>
     <input type="text" name="username" id="username">
     <br/>
     <label for="password">Password: </label>
     <input type="password" name="password" id="password">
     <br/><br/>
     <button type="submit">Submit</button>
   </form>
 </div>
</body>
</html>
