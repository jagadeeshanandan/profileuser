<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        body {
          background-image: url('woman.jpg');
          background-size: cover;
            background-position: center;
            margin: auto;
            padding: 20px;
            background-color: #f4f4f4;
            width: 400px;
            margin-left: 736px;
            margin-top: 90px;


        }

        h2 {
            font-size: 30px;
            color: #120B05;
            
            text-align: center;
        }

        p {
            margin-bottom: 10px;
            color: #FEEED5;
            text-align: center;
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input {
            width: 350px;
            padding: 8px;
            margin-bottom: 25px;
            background-color: white;
            border: 0px;
        }

        a {
            display: inline-block;
            padding: 8px 15px;
            background-color: #815633;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
            margin-left: 145px;
        }

        a:hover {
            background-color: #D8C3B8;
            color: black;
        }
    </style>
</head>
<body>
    <h2>User Profile</h2>
    <p>Username <input type="text" value="<%= (request.getAttribute("username") != null) ? request.getAttribute("username") : "jagadeesh" %>"></p>
    <p>Email <input type="text" value="<%= (request.getAttribute("email") != null) ? request.getAttribute("email") : "jagadeeshak@gmail.com" %>"></p>
    <a href="editProfile.jsp">Edit Profile</a>
</body>
</html>