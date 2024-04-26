package com_gwwp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {
public Connection getConnection() throws ClassNotFoundException, SQLException {
		
		Connection connection=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String dbUrl="jdbc:mysql://localhost:3306/gowildwildlifepark";
		String dbUser="root";
		String dbPassword="2874";
		
		connection=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
		
		return connection;
		
	}
}
