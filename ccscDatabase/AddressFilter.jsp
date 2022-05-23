<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Filter by Address</title>
</head>

<body>

    <%
        String address = request.getParameter("txAdd");

        try 
		{
			Class.forName("com.mysql.jdbc.Driver");   //to load driver class
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "");
											//to build connection between Java and database 
			Statement stmt=con.createStatement();  //create statement class object
			stmt.executeUpdate("Create database if not exists AccountDb");   
					//"if not exists" used because of database not created multiple times(error)
			
			stmt.execute("Use AccountDb");
			stmt.executeUpdate("Create table if not exists BankTb(bank_id int auto_increment primary key,"
					+ "name varchar(50), address varchar(150), gm varchar(200))");

			out.println("<table border='1'><thead><tr><th>Bank_Id </th> <th>Name </th> <th>Address </th> <th>Gm </th></tr></head><br>");

            PreparedStatement pstmt=con.prepareStatement("select * from BankTb where address=?");
            pstmt.setString(1, address);

			ResultSet rs=pstmt.executeQuery();
            while(rs.next())
			{
				out.println("<tr><td>"+rs.getInt("bank_id")+"</td>");
				out.println("<td>"+rs.getString("name")+"</td>");
				out.println("<td>"+rs.getString("address")+"</td>");
				out.println("<td>"+rs.getString("gm")+"</td>");
			}

            con.close();
		}
		catch (ClassNotFoundException e) 
		{
			out.println("ClassNotFoundException caught: "+e.getMessage());
		}
		catch (SQLException e) 
		{
			out.println("SQLException caught: "+e.getMessage());
		}
    %>

</body>
</html>