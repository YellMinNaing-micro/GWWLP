package com_gwwp_entity;

public class Keeper {
	private int keeperID;
	private String name;
	private String DOB;
	private String rank;
	public int getKeeperID() {
		return keeperID;
	}
	public void setKeeperID(int keeperID) {
		this.keeperID = keeperID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public Keeper(String name, String dOB, String rank) {
		super();
		this.name = name;
		DOB = dOB;
		this.rank = rank;
	}
	public Keeper(int keeperID, String name, String dOB, String rank) {
		super();
		this.keeperID = keeperID;
		this.name = name;
		DOB = dOB;
		this.rank = rank;
	}
	

}
