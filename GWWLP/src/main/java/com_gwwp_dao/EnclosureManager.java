package com_gwwp_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com_gwwp.DBManager;
import com_gwwp_entity.Enclosure;


public class EnclosureManager 
{
	//Crud - create,delet,update and delete
	
	public int insert(Enclosure e) throws ClassNotFoundException, SQLException{
		
		int result=-1;
		
		//1. get connection
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		//2.prepare statement
		String sql="INSERT INTO `gowildwildlifepark`.`enclosure` ( `type`, `location`) VALUES (?,?)";
		
		


		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		// first and second paramters inserted 1. course name and course text
		pstmt.setString(1, e.getType());
		pstmt.setString(2, e.getLocation());
		
		//3.execute statement
		result=pstmt.executeUpdate();
		
		return result;
		
	}
	public ArrayList<Enclosure> fetchAll()throws ClassNotFoundException, SQLException{ //select all
		ArrayList<Enclosure> Enclosures = new ArrayList<Enclosure>();// collection of course
		Enclosure e;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		// query
		String sql = "SELECT * FROM enclosure";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();


		while (rs.next()) {
			e = new Enclosure(
					//AnimalID, , YearArrive,
					//AnimalGender, NumFeedPerDay, AnimalAge, StaffID, EnclosureID, SpeciesID
					rs.getInt("enclosureID"),
					rs.getString("type"),
					
			        rs.getString("location"));
			Enclosures.add(e); //add entity into collection to arraylist
		}

		return Enclosures;

	}
	// update

	public int update(Enclosure k) throws ClassNotFoundException, SQLException {

	int result = -1;

	// get connection

	DBManager dbMgr = new DBManager();

	Connection conn = dbMgr.getConnection();

	// prepare statement

	String sql = "UPDATE `gowildwildlifepark`.`enclosure` SET `type` = ?, `location` = ? WHERE (`enclosureID` = ?);";

	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, k.getType());

	pstmt.setString(2, k.getLocation());

	pstmt.setInt(3, k.getEnclosureID());

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

	String sql = "DELETE FROM `gowildwildlifepark`.`enclosure`" + "WHERE enclosureID =?";

	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setInt(1, id);

	// execute statement

	result = pstmt.executeUpdate();

	return result;

	}

	public Enclosure getById(int id) throws SQLException,ClassNotFoundException {

	String sql ;

	//1. get Connection

	DBManager dbMgr = new DBManager();

	Connection conn = dbMgr.getConnection();

	//2. prepare the statement

	sql = "SELECT * FROM `gowildwildlifepark`.`enclosure` WHERE enclosureID =?" ;

	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setInt(1,id);

	ResultSet rs = pstmt.executeQuery();

	Enclosure Enclosure = null;

	while(rs.next()) {

	Enclosure = new Enclosure

	(rs.getInt("enclosureID"),

	rs.getString("type"),

	rs.getString("location"));

	}

	return Enclosure;

	}

	}


