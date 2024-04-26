package com_gwwp_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com_gwwp.DBManager;
import com_gwwp_entity.Keeper;


public class KeeperManager 
{
	//Crud - create,delet,update and delete
	
	public int insert(Keeper c) throws ClassNotFoundException, SQLException{
		
		int result=-1;
		
		//1. get connection
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		//2.prepare statement
		String sql="INSERT INTO `gowildwildlifepark`.`keeper` (`name`, `DOB`, `rank`) VALUES (?,?,?);";
		
		


		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		// first and second paramters inserted 1. course name and course text
		pstmt.setString(1, c.getName());
		pstmt.setString(2, c.getDOB());
		pstmt.setString(3, c.getRank());
		//3.execute statement
		result=pstmt.executeUpdate();
		
		return result;
		
	}
	public ArrayList<Keeper> fetchAll()throws ClassNotFoundException, SQLException{ //select all
		ArrayList<Keeper> Keepers = new ArrayList<Keeper>();// collection of course
		Keeper c;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		// query
		String sql = "SELECT * FROM keeper";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();


		while (rs.next()) {
			c = new Keeper(
					//AnimalID, , YearArrive,
					//AnimalGender, NumFeedPerDay, AnimalAge, StaffID, EnclosureID, SpeciesID
					rs.getInt("keeperID"),
					rs.getString("name"),
					rs.getString("DOB"),
			        rs.getString("rank"));
			Keepers.add(c); //add entity into collection to arraylist
		}

		return Keepers;
	}
	// update

	public int update(Keeper k) throws ClassNotFoundException, SQLException {

	int result = -1;

	// get connection

	DBManager dbMgr = new DBManager();

	Connection conn = dbMgr.getConnection();

	// prepare statement

	String sql = "UPDATE `gowildwildlifepark`.`keeper` SET " + "`name`=?," + "`DOB`=?," + "`rank`=?"

	+ "WHERE keeperID=?";

	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, k.getName());

	pstmt.setString(2, k.getDOB());

	pstmt.setString(3, k.getRank());

	pstmt.setInt(4, k.getKeeperID());

	// execute statement

	result = pstmt.executeUpdate();

	return result;

	}

	// delete

	public int delete(int id) throws ClassNotFoundException, SQLException {

	int result = -1;

	// get connection

	DBManager dbMgr = new DBManager();

	Connection conn = dbMgr.getConnection();

	// prepare statement

	String sql = "DELETE FROM `gowildwildlifepark`.`keeper`" + "WHERE keeperID =?";

	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setInt(1, id);

	// execute statement

	result = pstmt.executeUpdate();

	return result;

	}

	public Keeper getById(int id) throws SQLException,ClassNotFoundException {

	String sql ;

	//1. get Connection

	DBManager dbMgr = new DBManager();

	Connection conn = dbMgr.getConnection();

	//2. prepare the statement

	sql = "SELECT * FROM `gowildwildlifepark`.`keeper` WHERE keeperID =?" ;

	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setInt(1,id);

	ResultSet rs = pstmt.executeQuery();

	Keeper keeper = null;

	while(rs.next()) {

	keeper = new Keeper

	(rs.getInt("keeperID"),

	rs.getString("name"),

	rs.getString("DOB"),

	rs.getString("rank"));

	}

	return keeper;

	}

	}




