
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            text-align: center;
        }

        header {
            background: linear-gradient(90deg, #007bff, #00c6ff);
            color: white;
            padding: 50px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        .welcome {
            margin-top: 50px;
            font-size: 1.5em;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Your Dashboard</h1>
    </header>

    <div class="welcome">
        <p>Welcome,${modelname}</p>
		<a href="logout">logout</a>
    </div>
</body>
</html>
