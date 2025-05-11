package com.demo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Events {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long eventid;
	private String event;
	private int platerate;
	private int entertainment;
	private int decoration;
	private int chairrate;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	 @OneToMany(mappedBy = "event")
	private List<EventBookings> eventBookings;

	public Long getEventid() {
		return eventid;
	}

	public void setEventid(Long eventid) {
		this.eventid = eventid;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public int getPlaterate() {
		return platerate;
	}

	public void setPlaterate(int platerate) {
		this.platerate = platerate;
	}

	public int getEntertainment() {
		return entertainment;
	}

	public void setEntertainment(int entertainment) {
		this.entertainment = entertainment;
	}

	public int getDecoration() {
		return decoration;
	}

	public void setDecoration(int decoration) {
		this.decoration = decoration;
	}

	public int getChairrate() {
		return chairrate;
	}

	public void setChairrate(int chairrate) {
		this.chairrate = chairrate;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getImg4() {
		return img4;
	}

	public void setImg4(String img4) {
		this.img4 = img4;
	}

	public List<EventBookings> getEventBookings() {
		return eventBookings;
	}

	public void setEventBookings(List<EventBookings> eventBookings) {
		this.eventBookings = eventBookings;
	}

}
