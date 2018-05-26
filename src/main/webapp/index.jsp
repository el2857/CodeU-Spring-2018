<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<!DOCTYPE html>
<html>
<head>
  <title>Squeak Speak</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <link rel="icon" type="image/x-icon" href="../../favicon.ico?v=2">
  <link rel="stylesheet" href="/css/main.css">
</head>
<body>
  <h1 style="text-align:center; margin-top: 60px;">Squeak Speak</h1>
  <div id="container">
    <div style="text-align:center; width:50%; float:left; margin-right:auto; margin-top: 60px;">
      <h4>Send a squeak in a scurry!</h4>
      <img src = "sample_chat.png"/>
    </div>
    <div style="text-align:center; width:50%; float:right; margin-left:auto; margin-top: 60px;">
      <img src = "mice_logo.png"/>
      <br/><br/>
      <form action="/login" method="POST">
        <label for="username">Username: </label>
        <input type="text" name="username" id="username">
        <br/>
        <label for="password">Password: </label>
        <input type="password" name="password" id="password">
        <br/><br/>
        <a class="btn btn-primary" href="/login">Login</a>
      </form>
      <br/>
      <a class="btn btn-primary" href="/register">Register</a>
    </div>
  </div>
  <div style="text-align:center; margin-top: 600px;">
    <div><a href="/about.jsp">about</a></div>
    <div><a href="/testdata">load test data</a></div>
  </div>
</body>
</html>
