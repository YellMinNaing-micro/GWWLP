package com_gwwp_entity;

public class Species {
	private int speciesID;
	private String speciesTypes;
	private String speciesGropu;
	private String lifeStyle;
	private String consevationStatus;
	public int getSpeciesID() {
		return speciesID;
	}
	public void setSpeciesID(int speciesID) {
		this.speciesID = speciesID;
	}
	public String getSpeciesTypes() {
		return speciesTypes;
	}
	public void setSpeciesTypes(String speciesTypes) {
		this.speciesTypes = speciesTypes;
	}
	public String getSpeciesGropu() {
		return speciesGropu;
	}
	public void setSpeciesGropu(String speciesGropu) {
		this.speciesGropu = speciesGropu;
	}
	public String getLifeStyle() {
		return lifeStyle;
	}
	public void setLifeStyle(String lifeStyle) {
		this.lifeStyle = lifeStyle;
	}
	public String getConsevationStatus() {
		return consevationStatus;
	}
	public void setConsevationStatus(String consevationStatus) {
		this.consevationStatus = consevationStatus;
	}
	public Species(String speciesTypes, String speciesGropu, String lifeStyle, String consevationStatus) {
		super();
		this.speciesTypes = speciesTypes;
		this.speciesGropu = speciesGropu;
		this.lifeStyle = lifeStyle;
		this.consevationStatus = consevationStatus;
	}
	public Species(int speciesID, String speciesTypes, String speciesGropu, String lifeStyle,
			String consevationStatus) {
		super();
		this.speciesID = speciesID;
		this.speciesTypes = speciesTypes;
		this.speciesGropu = speciesGropu;
		this.lifeStyle = lifeStyle;
		this.consevationStatus = consevationStatus;
	}
	
	
	
}
