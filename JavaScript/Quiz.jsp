<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quiz Result</title>
    <style>
        body {
            background-color: rgb(183, 221, 247);
            text-align: center;
        }

        h2 {
            color: purple;
            background-color: rgb(136, 182, 250);
            border: 2px solid dodgerblue;
            border-radius: 10px;
            text-align: center;
            padding: 16px;
        }
    </style>
</head>

<body>
    <h2>Quiz Result</h2>
    <%
        int score=0;
        for(int i=1;i<=5;i++)
        {
            if(request.getParameter("Q"+i)==null)
                score+=0;
            else
                score+=Integer.parseInt(request.getParameter("Q"+i));
        }
	    out.print("Your Score : "+score+"/20");
    %>
</body>
</html>