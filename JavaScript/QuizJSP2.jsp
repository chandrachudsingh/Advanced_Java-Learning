<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quiz JSP2</title>
    <script>
         
    </script>
</head>
<body>

<%! static int[] points=new int[5]; %>
<%     
    session.setAttribute("reset",0);

    if(request.getParameter("btnQ")!=null)
    {
        int i=0;
        for(int k=0; ;k++)
        {
            if(request.getParameter("btnQ").equals("Q"+k))
            {
                i=k-1;
                break;
            }    
        }
        
        session.setAttribute("q",i);
        response.sendRedirect("QuizJSP.jsp");
    }
    else 
    {
        int i=Integer.parseInt(request.getParameter("hdQues"));
        String nm="Q"+(i+1);

        if(request.getParameter(nm)==null)
            points[i]=0;
        else
            points[i]=Integer.parseInt(request.getParameter(nm));


        if(request.getParameter("btn").equals("Next"))
        {
            if(points[i]==0)
                session.setAttribute("col","lightcoral");
            else
                session.setAttribute("col","skyblue");

            session.setAttribute("q",++i);
            response.sendRedirect("QuizJSP.jsp");
        }
        else if(request.getParameter("btn").equals("Previous"))
        {
            session.setAttribute("q",--i);
            response.sendRedirect("QuizJSP.jsp");
        }
        else
        {
            session.setAttribute("q",0);
            session.setAttribute("reset",1);
            int score=0;
            for(int k=0; k<points.length; k++)
                score+=points[k];
        
            %> <strong style='font-size: 25px; color: blue'>Your score = <%= score %></strong> <br> <input type='button' value='Answer sheet' class='btn' id='btans' onclick='showAns()' style='margin: 20px 20px;'/> <%
        }
    }
%>

</body>
</html>
