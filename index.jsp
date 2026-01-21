<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String entered = request.getParameter("data");
    if (entered == null) entered = "";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>DevOps Project</title>
    <style>
        :root {
            --bg: #f2f4f7;
            --card: rgba(255,255,255,0.85);
            --text: #111827;
            --muted: #6b7280;
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --border: rgba(17,24,39,0.12);
            --shadow: 0 18px 50px rgba(0,0,0,0.12);
            --radius: 18px;
        }

        * { box-sizing: border-box; }
        body {
            margin: 0;
            min-height: 100vh;
            display: grid;
            place-items: center;
            font-family: system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif;
            color: var(--text);
            background: radial-gradient(1200px 500px at 10% 10%, #ffffff 0%, var(--bg) 60%);
        }

        .card {
            width: min(720px, calc(100vw - 40px));
            padding: 38px 44px;
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            backdrop-filter: blur(8px);
        }

        h1 {
            margin: 0;
            font-size: 44px;
            font-weight: 800;
            text-align: center;
            letter-spacing: -0.5px;
        }

        h1 span {
            text-decoration: underline;
            text-underline-offset: 10px;
        }

        .subtitle {
            margin-top: 14px;
            text-align: center;
            color: var(--muted);
            font-size: 18px;
        }

        form { margin-top: 28px; }

        .input {
            width: 100%;
            height: 54px;
            padding: 0 16px;
            font-size: 18px;
            border-radius: 10px;
            border: 1px solid rgba(0,0,0,0.2);
            outline: none;
            background: rgba(255,255,255,0.9);
        }

        .input:focus {
            border-color: rgba(37,99,235,0.7);
            box-shadow: 0 0 0 4px rgba(37,99,235,0.15);
        }

        .btn {
            margin-top: 18px;
            width: 100%;
            height: 52px;
            border: none;
            border-radius: 10px;
            background: var(--primary);
            color: white;
            font-size: 18px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.15s ease-in-out;
        }

        .btn:hover { background: var(--primary-dark); }
        .btn:active { transform: translateY(1px); }

        .result {
            margin-top: 22px;
            padding: 18px 18px;
            border-radius: 12px;
            background: rgba(37,99,235,0.08);
            border-left: 6px solid var(--primary);
            font-size: 18px;
        }

        .result b { font-size: 22px; }
    </style>
</head>
<body>
<div class="card">
    <h1><span>DevOps Project</span></h1>
    <div class="subtitle">Welcome to our JSP App</div>

    <form method="post" action="index.jsp">
        <input class="input" type="text" name="data" placeholder="Type text here..." value="<%= entered %>" />
        <button class="btn" type="submit">Submit Data</button>
    </form>

    <% if (!entered.isEmpty()) { %>
        <div class="result">You entered: <b><%= entered %></b></div>
    <% } %>
</div>
</body>
</html>
