package com_gwwp_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com_gwwp.DBManager;
import com_gwwp_entity.Animal;


public class AnimalManager 
{
	//Crud - create,delet,update and delete
	
	public int insert(Animal a) throws ClassNotFoundException, SQLException{
		
		int result=-1;
		
		//1. get connection
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		//2.prepare statement
		String sql="INSERT INTO `gowildwildlifepark`.`animal` (`name`, `gender`, `arrivalYear`, `keeperID`, `enclosureID`, `dietID`, `speciesID`) VALUES (?,?,?,?,?,?,?)";
		
		


		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		// first and second paramters inserted 1. course name and course text
		pstmt.setString(1, a.getName());
		pstmt.setString(2, a.getGender());
		pstmt.setString(3, a.getArrivalYear());
		pstmt.setInt(4, a.getKeeperID());
		pstmt.setInt(5, a.getEnclosureID());
		pstmt.setInt(6, a.getDietID());
		pstmt.setInt(7, a.getSpeciesID());
		//3.execute statement
		result=pstmt.executeUpdate();
		
		return result;
		
	}
	public ArrayList<Animal> fetchAll()throws ClassNotFoundException, SQLException{ //select all
		ArrayList<Animal> Animals = new ArrayList<Animal>();// collection of course
		Animal a;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		// query
		String sql = "SELECT * FROM animal";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();


		while (rs.next()) {
			a = new Animal(
					//AnimalID, , YearArrive,
					//AnimalGender, NumFeedPerDay, AnimalAge, StaffID, EnclosureID, SpeciesID
					rs.getInt("animalID"),
					rs.getString("name"),
					rs.getString("gender"),
			        rs.getString("arrivalYear"),
					rs.getInt("keeperID"),
					rs.getInt("enclosureID"),
					rs.getInt("dietID"),
					rs.getInt("speciesID"));
			Animals.add(a); //add entity into collection to arraylist
		}

		return Animals;

	}
	

}
