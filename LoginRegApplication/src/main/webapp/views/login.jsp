
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="User Registration Page">
    <meta name="author" content="Your Name">
    <title>User Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        header {
            background: linear-gradient(90deg, #007bff, #00c6ff);
            color: white;
            text-align: center;
            padding: 50px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 2.5em;
            margin: 0;
        }

        header p {
            font-size: 1.2em;
            margin: 10px 0 0;
        }

        .registration-form {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .registration-form form {
            display: flex;
            flex-direction: column;
        }

        .registration-form label {
            font-size: 1.1em;
            margin-bottom: 5px;
            color: #555;
        }

        .registration-form input[type="text"],
        .registration-form input[type="email"],
        .registration-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1em;
        }

        .registration-form input[type="submit"] {
            background: #007bff;
            color: white;
            font-size: 1.2em;
            padding: 10px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .registration-form input[type="submit"]:hover {
            background: #0056b3;
        }

        .registration-form p {
            text-align: center;
            font-size: 1em;
            margin-top: 20px;
        }

        .registration-form a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s;
        }

        .registration-form a:hover {
            color: #0056b3;
        }

        footer {
            text-align: center;
            padding: 20px;
            background: #f4f4f9;
            font-size: 0.9em;
            color: #666;
        }
    </style>
</head>
<body class="body_bg">
    <header>
        <h1>Login Here</h1>
        <p>Join our platform to explore amazing features!</p>
    </header>
	
	<c:if test = "${not empty errorMsg}">
	    <h4 style="color: Red; font-size: 1.2em; font-weight: bold; text-align: center; margin-top: 20px; background-color: #e8f5e9; padding: 10px; border: 1px solid #a5d6a7; border-radius: 5px;">
	        ${errorMsg}
	    </h4>
	</c:if>
    <div class="registration-form">
        <form action="loginForm" method="post">
        
            <label for="email">Email:</label>
            <input type="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password"  name="password" required>
        
           
            <input type="submit" value="Login">
        </form>
        <p>Dont have an account? Dont worry <a href="regPage">Register here</a>.</p>
    </div>
</body>
</html>
