package com.demo;

import java.awt.print.Book;
import java.time.LocalDate;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

public class EventDAO {

	HibernateTemplate template;
	
	 @Autowired
	    private SessionFactory sessionFactory;

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	@Transactional
	public void save(Users user) {
		template.save(user);

	}

	  @Transactional
	    public Users getUser(String email, String password) {
	        Session session = sessionFactory.getCurrentSession();
	        Query<Users> query = session.createQuery("from Users where email = :email and password = :password", Users.class);
	        query.setParameter("email", email);
	        query.setParameter("password", password);
	        List<Users> users = query.getResultList();
	        return users.isEmpty() ? null : users.get(0);
	    }

	  @Transactional
	  public Users getUserByEmail(String email) {
		   Session session = sessionFactory.getCurrentSession();
	        Query<Users> query = session.createQuery("from Users where email = :email", Users.class);
	        query.setParameter("email", email);
	        List<Users> users = query.getResultList();
	        return users.isEmpty() ? null : users.get(0);
	    }

	  
	 @Transactional
	public void saveEvent(Events event) {
		template.save(event);
		
	}

	 @Transactional
	public List<Events> getEventsByName(String event) {
		
		Session session = sessionFactory.getCurrentSession();
        Query<Events> query = session.createQuery("from Events where event = :event", Events.class);
        query.setParameter("event", event);
        List<Events> events = query.getResultList();
        return events;
	}

	

	public Events getCurrentEvent(Long eventid) {
		Events event=template.get(Events.class, eventid);
		return event;
	}

	@Transactional
	public void saveBooking(EventBookings booking) {
		template.save(booking);
		
	}
	@Transactional
	public void saveBookmark(Bookmarks bookmark) {
		template.save(bookmark);
		
	}
	
	@Transactional
	public void removeBookmark(Bookmarks bookmark) {
		template.delete(bookmark);
	}

	@Transactional
	public List<Bookmarks> getMyBookmarks(Users user) {
		Session session = sessionFactory.getCurrentSession();
        Query<Bookmarks> query = session.createQuery("from Bookmarks where user_id = :user", Bookmarks.class);
        query.setParameter("user", user.getId());
        List<Bookmarks> bookmarks = query.getResultList();
		return bookmarks;
	}

	@Transactional
	public void updateEvent(Events event) {
		template.update(event);
		
	}

	@Transactional
	public void deleteEvent(Events event) {
		template.delete(event);
	}

	public Bookmarks getCurrentBookmark(Long bookmarkid) {
		Bookmarks bookmark=template.get(Bookmarks.class, bookmarkid);
		return bookmark;
	}

	
	@Transactional
	public List<EventBookings> getMyBookings(Users user) {
		Session session = sessionFactory.getCurrentSession();
        Query<EventBookings> query = session.createQuery("from EventBookings where user_id = :user", EventBookings.class);
        query.setParameter("user", user.getId());
        List<EventBookings> mybookings = query.getResultList();
		return mybookings;
	}
	
//	SELECT MIN(Price) AS SmallestPricc FROM Products;

	@Transactional
	public List<LocalDate> getBookeddates(LocalDate now, Long eventid) {
		Session session = sessionFactory.getCurrentSession();
        Query<LocalDate> query = session.createQuery("select date from EventBookings where date > :date AND event_id =: eventid", LocalDate.class);
        query.setParameter("date", now);
        query.setParameter("eventid", eventid);
        List<LocalDate> allbookeddates = query.getResultList();
		return allbookeddates;
	}

	@Transactional
	public List<EventBookings> getAllBookings() {
		Session session = sessionFactory.getCurrentSession();
        Query<EventBookings> query = session.createQuery("from EventBookings ORDER BY date", EventBookings.class);
        List<EventBookings> allbookings = query.getResultList();
		return allbookings;
	}

	

}
