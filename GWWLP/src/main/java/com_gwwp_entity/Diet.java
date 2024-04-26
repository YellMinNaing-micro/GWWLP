package com_gwwp_entity;

public class Diet {
	private int dietID;
	private String DietTye;
	private int numberOfFeed;
	public int getDietID() {
		return dietID;
	}
	public void setDietID(int dietID) {
		this.dietID = dietID;
	}
	public String getDietTye() {
		return DietTye;
	}
	public void setDietTye(String dietTye) {
		DietTye = dietTye;
	}
	public int getNumberOfFeed() {
		return numberOfFeed;
	}
	public void setNumberOfFeed(int numberOfFeed) {
		this.numberOfFeed = numberOfFeed;
	}
	public Diet(String dietTye, int numberOfFeed) {
		super();
		DietTye = dietTye;
		this.numberOfFeed = numberOfFeed;
	}
	public Diet(int dietID, String dietTye, int numberOfFeed) {
		super();
		this.dietID = dietID;
		DietTye = dietTye;
		this.numberOfFeed = numberOfFeed;
	}
	
}
