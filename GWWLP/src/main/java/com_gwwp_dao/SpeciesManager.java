package com_gwwp_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com_gwwp.DBManager;
import com_gwwp_entity.Species;


public class SpeciesManager 
{
	//Crud - create,delet,update and delete
	
	public int insert(Species s) throws ClassNotFoundException, SQLException{
		
		int result=-1;
		
		//1. get connection
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		//2.prepare statement
		String sql="INSERT INTO `gowildwildlifepark`.`species` (`speciesTypes`, `speciesGropu`, `lifeStyle`, `conservationStatus`) VALUES (?,?,?,?)";
		
		


		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		// first and second paramters inserted 1. course name and course text
		pstmt.setString(1, s.getSpeciesTypes());
		pstmt.setString(2, s.getSpeciesGropu());
		pstmt.setString(3, s.getLifeStyle());
		pstmt.setString(4, s.getConsevationStatus());
		//3.execute statement
		result=pstmt.executeUpdate();
		
		return result;
		
	}
	public ArrayList<Species> fetchAll()throws ClassNotFoundException, SQLException{ //select all
		ArrayList<Species> Speciess = new ArrayList<Species>();// collection of course
		Species s;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		// query
		String sql = "SELECT * FROM species";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();


		while (rs.next()) {
			s = new Species(
					//AnimalID, , YearArrive,
					//AnimalGender, NumFeedPerDay, AnimalAge, StaffID, EnclosureID, SpeciesID
					rs.getInt("speciesID"),
					rs.getString("speciesTypes"),
					rs.getString("speciesGropu"),
					rs.getString("lifeStyle"),
			        rs.getString("conservationStatus"));
			Speciess.add(s); //add entity into collection to arraylist
		}

		return Speciess;

	}
	

}
