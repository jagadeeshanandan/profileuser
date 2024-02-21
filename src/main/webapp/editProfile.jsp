<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <style>
    body {
        background-image: url('woman.jpg');

            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: auto;
            margin-top: 50px;
            padding: 20px;
            background-color: #f4f4f4;
            /*border: 2px solid #ddd;*/
            width: 400px;
            text-align: center;
        margin-right: 145px;
            
        }

        h2 {
            color: #fff;
            
        }

        form {
            margin-top: 20px;
          
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: black;
            font-weight:bold;
            text-align:center;
            color: #D8C3B8;

            
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
              margin-bottom:25px;
            
        }

        input[type="submit"] {
            background-color: #815633;

            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 5px;
        }

        input[type="submit"]:hover {
            background-color: #D8C3B8;
            color:black;

        }

        a {
            display: inline-block;
            
            margin-top: 1px;
            color: #fff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;

        }
    </style>
</head>
<body>
    <h2>Edit Profile</h2>
    <form action="UpdateProfileServlet" method="post">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" value="<%= (request.getAttribute("username") != null) ? request.getAttribute("username") : "jagadeesh" %>" required>
        <br>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="<%= (request.getAttribute("email") != null) ? request.getAttribute("email") : "jagadeeshak@gmail.com" %>" required>
        <br>
        <input type="submit" value="Update">
    </form>
    <br>
    <a href="index.jsp">Back to Profile</a>
</body>
</html>