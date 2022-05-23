<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.Timer, java.util.TimerTask" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quiz JSP</title>
    <script language="javascript">
    
        var hr=0, min=4, sec=59, minQ=0, secQ=59, clk, clkQ;

        function checkOpt(x) 
        {
            var nm="Q"+(x+1);
            for(var i=0;i<4;i++)
                document.getElementsByName(nm).item(i).checked='checked';
        }

        function markQues(x, col)
        {
            if(x<0)
                return;
            var nm="Q"+x;
            document.getElementById(nm).style.backgroundColor=col;
        }

        function resetClockQ()
        {
            window.clearInterval(clkQ);
        }

        function designClockQ()
        {
            clkQ=window.setInterval('timerQ()', 100);   
        }

        function timerQ()
        {
            if(secQ==0)
            { 
                if(minQ==0)
                {
                    document.getElementsByName("Next").item(0).click();

                    minQ=0;
                    secQ=59;
                }    
                else
                {
                    minQ-=1;
                    secQ=59;
                }
            }

            document.getElementById("time").innerHTML="Time Left - "+(minQ)+":"+(secQ--)+" mins";
        }

        function designClock()
        {
                clk=window.setInterval('timer()', 100);   
        }

        function timer()
        {
            if(min==0)
            { 
                if(sec==0)
                    hr-=1;
            } 
            else if(sec==0)
            {
                min-=1;
                sec=59;
            }

            if(hr<0) 
            { 
                window.clearInterval(clk);
                document.getElementsByName("Submit").item(0).click();
            }

            if(min<1)
                document.getElementById('tottime').style.color='tomato';

            document.getElementById("tottime").innerHTML="Quiz Time - "+(hr)+":"+(min)+":"+(sec--)+" hrs";
        } 
    </script>
</head>
<body>

<%! 
    String[] que=new String[5];
    String[][] opt=new String[5][4];
    int[] ans=new int[5];

    static String[] btCol=new String[5];
    int i=0, j=0, val=0;
    String nm, ids, lbids;
%>
<%
    if(session.getAttribute("reset")!=null)
    {
        if((int)session.getAttribute("reset")==1)
            for(int k=0;k<btCol.length;k++)
                btCol[k]=null;
    }

    que[0]="Q1). Who is the current Prime Minister of India ?";
    que[1]="Q2). Donald trump is in which position of US president ?";
    que[2]="Q3). Total how many countries are there in the world ?";
    que[3]="Q4). What is the population of the world according to the UN in 2020 ?";
    que[4]="Q5). Who is the world's most paid athelete ?";

    opt[0][0]="Rahul Gandhi";
    opt[0][1]="Sonia Gandhi";
    opt[0][2]="Narendra Modi";
    opt[0][3]="Manmohan Singh";
        
    opt[1][0]="41st President";
    opt[1][1]="39st President";
    opt[1][2]="43st President";
    opt[1][3]="45st President";
        
    opt[2][0]="191";
    opt[2][1]="195";
    opt[2][2]="205";
    opt[2][3]="221";
        
    opt[3][0]="7.8 Billion";
    opt[3][1]="7.5 Billion";
    opt[3][2]="7.1 Billion";
    opt[3][3]="8.3 Billion";
        
    opt[4][0]="Lionel Messi";
    opt[4][1]="Christiano Ronaldo";
    opt[4][2]="Neymar";
    opt[4][3]="Roger Federer";

    ans[0]=2;
    ans[1]=3;
    ans[2]=1;
    ans[3]=0;
    ans[4]=3;
%>
    <div id="queList" style="float: left; width: 100px; height: 100vh; padding: 10px; margin: 0px 10px; border: 2px solid black;">
        <form action="QuizJSP2.jsp">
    <%    
        for(int i=0;i<que.length;i++)
        {
            %>
            <input type="submit" name="btnQ" id="<%= "Q"+(i+1) %>" value="<%= "Q"+(i+1) %>" style="background-color: white; padding: 4px; width: 100%; border: none; border-radius:16px;"><hr>
            <%
        }
    %>
        </form>
    </div>
    <div id="time" style="color: blueviolet; font-weight: bold; font-size: 20px; padding: 10px 20px;">
        <script>
            designClockQ();
        </script>
    </div>
    <div id="ques">
        <form action="QuizJSP2.jsp">
<%
        for(int k=0;k<btCol.length;k++)
        {
            if(btCol[k]!=null)
            {
                %> <script> markQues('<%= k %>','<%= btCol[k] %>'); </script> <%
            }
        }

        if(session.getAttribute("q")!=null)
        {
            i=(int)(session.getAttribute("q"));
            btCol[i]=(String)session.getAttribute("col");
            %> <script> markQues('<%= i %>','<%= btCol[i] %>'); </script> <%
        }     

        //if(!=-1)
        //    %><script> checkOpt(); </script> <%

        out.print(que[i]+"<br>");

        for(j=0;j<opt[i].length;j++)
        {       
            nm="Q"+(i+1);
            ids=(i+1)+""+(j+1);  
            lbids="lbQ"+(i+1)+""+(j+1);

            if(j==ans[i])  
                val=4;
            else
                val=-1;
%>
            <input type="radio" id="<%= ids %>" name="<%= nm %>" value="<%= val %>" /><label for="<%= ids %>" id="<%= lbids %>"><%= opt[i][j] %></label><br>
<%
        }
        %> <br> <%
        if(i==0)
        {
%>          
            <input type="submit" name="btn" value="Next">
<%
        }
        else if(i<4)
        {
%>
            <input type="submit" name="btn" value="Previous">
            <input type="submit" name="btn" value="Next">
<%
        }
        else
        {
%>          
            <input type="submit" name="btn" value="Previous">
            <input type="submit" name="btn" value="Submit">
<%
        }
%>
            <input type="hidden" name="hdQues" value="<%= i %>" >
        </form>
    </div><br>
    <div id="info" style="position: fixed; top:10px; right: 10px; padding: 10px 20px; border: 2px solid black;">
        <p style="font-size: 20px; text-align: center; text-decoration: underline;">Options</p>
        <p>Attempted : <span style="background-color: skyblue; padding: 3px 20px; border-radius: 16px; ">blue</span></p>
        <p>Not Attempted : <span style="background-color: lightcoral; padding: 3px 20px; border-radius: 16px; ">red</span></p>
    </div>
    <div id="tottime" style="box-sizing: border-box; width: 250px; font-size: 30px; text-align: center; position: fixed; top:180px; right: 10px; padding: 10px 0px;">
        <%!
            int hrs=0 ,min=4, sec=59;

            class Execute extends TimerTask
            {
	            public void run()
	            {
                    if(sec==0)
                    {
                        if(min==0)
                        { 
                            if(sec==0)
                            hrs-=1;
                        } 
                        else if(sec==0)
                        {
                            min-=1;
                            sec=59;
                        }
                    }
		            %><%= "Quiz Time : "+(hrs)+":"+(min)+":"+(sec--)+" hrs left" %><%!
	            }
            }

            public static class TimerClass 
            {
	            public static void main(String[] args)
	            {
		            Timer T=new Timer();
		            TimerTask Task=new Execute();
		
	            	//schedule(task, start time, timer delay)
		            T.schedule(Task,0,1000);
	            }
            }
        %>
    </div>
</body>
</html>