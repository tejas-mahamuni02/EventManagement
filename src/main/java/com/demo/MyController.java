package com.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes({ "user", "events", "currentevent", "bookmarks", "eventname", "event", "msg", "mybookings","bookeddate" })
public class MyController {

	@Autowired
	EventDAO dao;

	@RequestMapping("/")
	public String home(SessionStatus sessionStatus) {
		sessionStatus.setComplete(); // End the session
		return "home";
	}

	@RequestMapping("/home")
	public String home1(SessionStatus sessionStatus) {
		sessionStatus.setComplete(); // End the session
		return "redirect:/";
	}

	@RequestMapping("/userhome")
	public String userhome() {
		return "userhome";
	}

	@RequestMapping("/loginform")
	public String loginform(SessionStatus sessionStatus) {
		sessionStatus.setComplete(); // End the session
		return "LoginForm";
	}

	@RequestMapping("/registerform")
	public String registerform(Model m) {
		m.addAttribute("user", new Users());
		return "RegisterForm";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveData(@ModelAttribute("user") Users user, Model m) {
		if (dao.getUserByEmail(user.getEmail()) != null) {
			m.addAttribute("msg", "User is Already Exist");

			return "RegisterForm";
		}
		dao.save(user);
		return "redirect:submit";
	}

	/*
	 * @RequestMapping(value = "/homepage", method = RequestMethod.POST) public
	 * String Login(@RequestParam("email") String email, @RequestParam("password")
	 * String password, Model m) {
	 * 
	 * Users user = dao.getUser(email, password); if (user != null) {
	 * 
	 * if (user.getEmail().equals("tejas.mahamuni2@gmail.com")) {
	 * m.addAttribute("user", user); m.addAttribute("event", new Events()); return
	 * "adminhome"; } else { m.addAttribute("user", user); return "userhome"; } }
	 * 
	 * else { return "LoginForm"; } }
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(@RequestParam("email") String email, @RequestParam("password") String password, Model m) {

		Users user = dao.getUser(email, password);
		m.addAttribute("user", user);
		return "redirect:/homepage";
	}

	@RequestMapping(value = "/homepage", method = RequestMethod.GET)
	public String homepage(Model m, HttpSession session) {

		Users user = (Users) session.getAttribute("user");
		if (user != null) {

			if (user.getEmail().equals("tejas.mahamuni2@gmail.com")) {
				m.addAttribute("user", user);
				m.addAttribute("event", new Events());
				return "adminhome";
			} else {
				m.addAttribute("user", user);
				return "userhome";
			}
		}

		else {
			return "redirect:/loginform";
		}
	}

	@RequestMapping("/submit")
	public String Success() {
		return "LoginForm";
	}

	@GetMapping("/events/{event}")
	public String events(@PathVariable String event, @ModelAttribute("user") Users user, Model m) {
		List<Events> events = dao.getEventsByName(event);
		m.addAttribute("eventname", event);
		m.addAttribute("events", events);
		if (user.getEmail().equals("tejas.mahamuni2@gmail.com")) {
			return "redirect:/eventpageadmin";
		} else {
			List<EventBookings> mybookings = dao.getMyBookings(user);
			m.addAttribute("mybookings", mybookings);
			List<Bookmarks> bookmarks = dao.getMyBookmarks(user);
			m.addAttribute("bookmarks", bookmarks);

			return "redirect:/eventpage";
		}
	}

	@RequestMapping("/eventpage")
	public String eventpage() {
		return "EventPage";
	}

	@GetMapping("/events/event/{eventid}")
	public String event(@PathVariable Long eventid, Model m) {

		m.addAttribute("command", new EventBookings());
		Events currentevent = dao.getCurrentEvent(eventid);
		m.addAttribute("currentevent", currentevent);
		List<LocalDate> bookeddate=dao.getBookeddates(LocalDate.now(),eventid);
		m.addAttribute("bookeddate", bookeddate);
		return "redirect:/bookform";
	}

	@RequestMapping("/bookform")
	public String eventform() {
		return "BookForm";
	}

	@RequestMapping(value = "/saveBooking", method = RequestMethod.POST)
	public String saveBooking(@ModelAttribute("booking") EventBookings booking,
			@ModelAttribute("currentevent") Events currentEvent, @RequestParam("eventdate") String dateStr, Model m,
			HttpSession session) {
//		session.setAttribute("msg", "Package Booked Successfully of "+currentEvent.getEvent()+" with total bill "+booking.getTotal());
		m.addAttribute("msg",
				"Package Booked Successfully of " + currentEvent.getEvent() + " with total bill " + booking.getTotal());
		Users user = (Users) session.getAttribute("user");
		LocalDate date = LocalDate.parse(dateStr);
		booking.setDate(date);
		booking.setEvent(currentEvent);
		booking.setUser(user);
		m.addAttribute("booking", booking);
		dao.saveBooking(booking);
		return "redirect:/homepage";
	}

	@GetMapping("/events/bookmark/{eventid}")
	public String saveBookmark(@PathVariable Long eventid, @ModelAttribute("user") Users user, Model m) {

		Events currentevent = dao.getCurrentEvent(eventid);
		Bookmarks bookmark = new Bookmarks();
		bookmark.setEvent(currentevent);
		bookmark.setUser(user);
		dao.saveBookmark(bookmark);
		return "redirect:/events/" + currentevent.getEvent();
	}

	@GetMapping("/events/bookmarkremove/{bookmarkid}")
	public String removeBookmark(@PathVariable Long bookmarkid, @ModelAttribute("user") Users user, Model m) {

		Bookmarks bookmark = dao.getCurrentBookmark(bookmarkid);
		dao.removeBookmark(bookmark);
		return "redirect:/bookmarks";
	}

	@GetMapping("/bookmarks")
	public String myBookmarks(Model m, HttpSession session) {
		Users user = (Users) session.getAttribute("user");
		if (user == null) {
			return "redirect:homepage";
		} else {
			List<Bookmarks> bookmarks = dao.getMyBookmarks(user);
			m.addAttribute("bookmarks", bookmarks);
			List<EventBookings> mybookings = dao.getMyBookings(user);
			m.addAttribute("mybookings", mybookings);
			
			return "MyBookmarks";
		}
	}

	@GetMapping("/bookings")
	public String myBookings(Model m, HttpSession session) {
		Users user = (Users) session.getAttribute("user");
		if (user == null) {
			return "redirect:homepage";
		} else {

			List<EventBookings> mybookings = dao.getMyBookings(user);
			m.addAttribute("mybookings", mybookings);
			List<Bookmarks> bookmarks = dao.getMyBookmarks(user);
			m.addAttribute("bookmarks", bookmarks);
			return "MyBookings";
		}
	}

	@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus) {

		sessionStatus.setComplete(); // End the session
		return "redirect:/clearSessionAttributes";
	}

	@RequestMapping("/logoutadmin")
	public String logoutadmin(SessionStatus sessionStatus, Model m) {

		sessionStatus.setComplete(); // End the session
		return "redirect:/clearSessionAttributes";
	}

	@RequestMapping("/clearSessionAttributes")
	public String clearSessionAttributes(HttpSession session) {
		session.setAttribute("user", null);
		session.setAttribute("events", null);
		session.setAttribute("currentevent", null);
		session.setAttribute("bookmarks", null);
		session.setAttribute("mybookings", null);
		session.setAttribute("msg", null);
		session.setAttribute("eventname", null);
		session.setAttribute("event", null);
		session.setAttribute("allbookings", null);
		session.setAttribute("bookeddate", null);
		return "redirect:/home";
	}

}
