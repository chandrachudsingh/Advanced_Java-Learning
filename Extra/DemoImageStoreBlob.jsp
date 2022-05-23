<%@ page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*,javax.servlet.http.Part,javax.servlet.annotation.MultipartConfig" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Demo Image store blob</title>
</head>

<body>

<%
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    out.print(request.getParameter("tx1"));

    /*InputStream inputStream = null; // input stream of the upload file
    Part filePart = request.getPart("photo");
    if (filePart != null)
    {
        out.println(filePart.getName());
        out.println(filePart.getSize());
        out.println(filePart.getContentType());
        inputStream = filePart.getInputStream();
    }*/
    Connection conn = null; // connection to the database
    try
    {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306","root", "");
        Statement stmt=conn.createStatement();
        stmt.executeUpdate("create database if not exists ImageTrialDb");
        stmt.execute("use ImageTrialDb");
        stmt.executeUpdate("create table if not exists contactTb(first_name varchar(100), last_name varchar(100), photo longblob)");
        
        String sql = "INSERT INTO contactTb (first_name, last_name, photo) values (?, ?, ?)";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, firstName);
        statement.setString(2, lastName);
        
        if (inputStream != null) 
            statement.setBlob(3, inputStream);
        
        int row = statement.executeUpdate();
        if (row > 0)
            out.print("File uploaded and saved into database");
        else
            out.print("No File uploaded and NO saved into database");
        
    }
    catch (SQLException ex)
    {
        ex.printStackTrace();
    }
    finally
    {
        if (conn != null)
        {
            try
            {
                conn.close();
            }
            catch (SQLException ex)
            {
                ex.printStackTrace();
            }
        }
    }
%>

</body>
</html>