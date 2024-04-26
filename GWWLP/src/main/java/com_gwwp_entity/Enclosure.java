package com_gwwp_entity;

public class Enclosure {
	private int enclosureID;
	private String type;
	private String location;
	public int getEnclosureID() {
		return enclosureID;
	}
	public void setEnclosureID(int enclosureID) {
		this.enclosureID = enclosureID;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Enclosure(String type, String location) {
		super();
		this.type = type;
		this.location = location;
	}
	public Enclosure(int enclosureID, String type, String location) {
		super();
		this.enclosureID = enclosureID;
		this.type = type;
		this.location = location;
	}
	
	
}
