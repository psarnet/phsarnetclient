package com.phsarnet.client.entities;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Source {
	
	@JsonProperty("ID")
	private int sourceid;
	
	@JsonProperty("DOMAIN")
	private String domain;
	
	@JsonProperty("LOGO")
	private String logo;
	
	@JsonProperty("URL")
	private String url;
	
	@JsonProperty("ROWS")
	private String rowsselector;
	
	@JsonProperty("SELECTOR_IMAGE")
	private String imageselector;
	
	@JsonProperty("IMAGE_ATTRIBUTE")
	private String imageattribute;
	
	@JsonProperty("LINK")
	private String linkselector;
	
	@JsonProperty("TITLE")
	private String titleselector;
	
	@JsonProperty("PRICE")
	private String priceselector;
	
	@JsonProperty("DESCRIPTION")
	private String description;

	public int getSourceid() {
		return sourceid;
	}

	public void setSourceid(int sourceid) {
		this.sourceid = sourceid;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getRowsselector() {
		return rowsselector;
	}

	public void setRowsselector(String rowsselector) {
		this.rowsselector = rowsselector;
	}

	public String getImageselector() {
		return imageselector;
	}

	public void setImageselector(String imageselector) {
		this.imageselector = imageselector;
	}

	public String getImageattribute() {
		return imageattribute;
	}

	public void setImageattribute(String imageattribute) {
		this.imageattribute = imageattribute;
	}

	public String getLinkselector() {
		return linkselector;
	}

	public void setLinkselector(String linkselector) {
		this.linkselector = linkselector;
	}

	public String getTitleselector() {
		return titleselector;
	}

	public void setTitleselector(String titleselector) {
		this.titleselector = titleselector;
	}

	public String getPriceselector() {
		return priceselector;
	}

	public void setPriceselector(String priceselector) {
		this.priceselector = priceselector;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
