<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Demo Database</title>
</head>

<body>

    <%
        String name = request.getParameter("tx1");
        String address = request.getParameter("tx2");
        String gm = request.getParameter("tx3");

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

            PreparedStatement pstmt=con.prepareStatement("insert into BankTb(name,address,gm) values(?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, address);
			pstmt.setString(3, gm);
			pstmt.executeUpdate();

            con.close();

            out.println("Value inserted succesfully");
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