package com.demo;


import javax.persistence.*;

@Entity
public class Bookmarks {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long bookmarkid;
	
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private Users user;
	
	@ManyToOne
	@JoinColumn(name = "event_id", nullable = false)
	private Events event;

	

	public Long getBookmarkid() {
		return bookmarkid;
	}

	public void setBookmarkid(Long bookmarkid) {
		this.bookmarkid = bookmarkid;
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
	
	
}
