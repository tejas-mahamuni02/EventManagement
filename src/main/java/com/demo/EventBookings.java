package com.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDate;

@Entity
public class EventBookings {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long bookingid;

	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private Users user;
	
	@ManyToOne
	@JoinColumn(name = "event_id", nullable = false)
	private Events event;
	
	private String location;
	
	private int totalplaterate;
	
	private int totalchairrate;
	
	private int entertainmentrate;

	private int decorationrate;
	
	private int distance;
	
	private int total;
	
	private LocalDate date;

	public Long getBookingid() {
		return bookingid;
	}

	public void setBookingid(Long bookingid) {
		this.bookingid = bookingid;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Events getEvent() {
		return event;
	}

	public void setEvent(Events event) {
		this.event = event;
	}
	
	

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getTotalplaterate() {
		return totalplaterate;
	}

	public void setTotalplaterate(int totalplaterate) {
		this.totalplaterate = totalplaterate;
	}

	public int getTotalchairrate() {
		return totalchairrate;
	}

	public void setTotalchairrate(int totalchairrate) {
		this.totalchairrate = totalchairrate;
	}

	public int getEntertainmentrate() {
		return entertainmentrate;
	}

	public void setEntertainmentrate(int entertainmentrate) {
		this.entertainmentrate = entertainmentrate;
	}

	public int getDecorationrate() {
		return decorationrate;
	}

	public void setDecorationrate(int decorationrate) {
		this.decorationrate = decorationrate;
	}

	
	public int getDistance() {
		return distance;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	

	
	
	
	
}
