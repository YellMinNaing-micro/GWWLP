package com_gwwp_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com_gwwp.DBManager;
import com_gwwp_entity.Diet;


public class DietManager 
{
	//Crud - create,delet,update and delete
	
	public int insert(Diet d) throws ClassNotFoundException, SQLException{
		
		int result=-1;
		
		//1. get connection
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		//2.prepare statement
		String sql="INSERT INTO `gowildwildlifepark`.`diet` (`DietType`, `numberOfFeed`) VALUES ( ? , ?);";
	
		
		


		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		// first and second paramters inserted 1. course name and course text
		pstmt.setString(1, d.getDietTye());
		pstmt.setInt(2, d.getNumberOfFeed());
		
		//3.execute statement
		result=pstmt.executeUpdate();
		
		return result;
		
	}
	public ArrayList<Diet> fetchAll()throws ClassNotFoundException, SQLException{ //select all
		ArrayList<Diet> Diets = new ArrayList<Diet>();// collection of course
		Diet d;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		// query
		String sql = "SELECT * FROM diet";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();


		while (rs.next()) {
			d = new Diet(
					//AnimalID, , YearArrive,
					//AnimalGender, NumFeedPerDay, AnimalAge, StaffID, EnclosureID, SpeciesID
					rs.getInt("dietID"),
					rs.getString("DietType"),
					rs.getInt("numberOfFeed"));
			       
			Diets.add(d); //add entity into collection to arraylist
		}

		return Diets;

	}
	

}
