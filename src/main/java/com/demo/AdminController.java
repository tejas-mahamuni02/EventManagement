package com.demo;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;

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

@Controller
@SessionAttributes({ "event","allbookings" })
public class AdminController {

	@Autowired
	EventDAO dao;

	private static final String UPLOAD_DIR = "E:\\Java Practice\\Spring Hibernate Project\\EventManagement\\src\\main\\webapp\\WEB-INF\\jsp\\eventimages\\";

	@PostMapping("saveevent")
	public String saveEvent(@ModelAttribute("event") Events event, Model m, @RequestParam("image1") MultipartFile img1,

			@RequestParam("image2") MultipartFile img2, @RequestParam("image3") MultipartFile img3,

			@RequestParam("image4") MultipartFile img4) {

		try { // Ensure the directory exists
			Path path1 = Paths.get(UPLOAD_DIR + img1.getOriginalFilename());
			img1.transferTo(new File(path1.toString()));
			Path path2 = Paths.get(UPLOAD_DIR + img2.getOriginalFilename());
			img2.transferTo(new File(path2.toString()));
			Path path3 = Paths.get(UPLOAD_DIR + img3.getOriginalFilename());
			img3.transferTo(new File(path3.toString()));
			Path path4 = Paths.get(UPLOAD_DIR + img4.getOriginalFilename());
			img4.transferTo(new File(path4.toString()));

			event.setImg1("eventimages/" + img1.getOriginalFilename());
			event.setImg2("eventimages/" + img2.getOriginalFilename());
			event.setImg3("eventimages/" + img3.getOriginalFilename());
			event.setImg4("eventimages/" + img4.getOriginalFilename());

		} catch (IOException e) {
			e.printStackTrace();
		}

		m.addAttribute("msg", "Event Upload Successfully");
		dao.saveEvent(event);
		return "redirect:/userhome";

	}

	@RequestMapping("/eventpageadmin")
	public String eventpage() {
		return "EventPageAdmin";
	}

	@GetMapping("/events/eventedit/{eventid}")
	public String eventedit(@PathVariable Long eventid, Model m) {

		m.addAttribute("command", new Events());
		Events event = dao.getCurrentEvent(eventid);
		m.addAttribute("event", event);
		return "redirect:/editform";
	}

	@RequestMapping("/editform")
	public String editform() {
		return "EditForm";
	}

	@PostMapping("/events/editsave")
	public String editsave(@ModelAttribute("command") Events event, Model m) {

		dao.updateEvent(event);
		return "redirect:/events/" + event.getEvent();
	}

	@PostMapping("/events/editsaveimg")
	public String editsaveimg(@ModelAttribute("command") Events event, Model m,
			@RequestParam("image1") MultipartFile img1,

			@RequestParam("image2") MultipartFile img2, @RequestParam("image3") MultipartFile img3,

			@RequestParam("image4") MultipartFile img4) {

		try { // Ensure the directory exists
			Path path1 = Paths.get(UPLOAD_DIR + img1.getOriginalFilename());
			img1.transferTo(new File(path1.toString()));
			Path path2 = Paths.get(UPLOAD_DIR + img2.getOriginalFilename());
			img2.transferTo(new File(path2.toString()));
			Path path3 = Paths.get(UPLOAD_DIR + img3.getOriginalFilename());
			img3.transferTo(new File(path3.toString()));
			Path path4 = Paths.get(UPLOAD_DIR + img4.getOriginalFilename());
			img4.transferTo(new File(path4.toString()));

			event.setImg1("eventimages/" + img1.getOriginalFilename());
			event.setImg2("eventimages/" + img2.getOriginalFilename());
			event.setImg3("eventimages/" + img3.getOriginalFilename());
			event.setImg4("eventimages/" + img4.getOriginalFilename());

		} catch (IOException e) {
			e.printStackTrace();
		}

		dao.updateEvent(event);
		return "redirect:/events/" + event.getEvent();
	}

	@GetMapping("/events/eventdelete/{eventid}")
	public String eventdelete(@PathVariable Long eventid, Model m) {

		Events event = dao.getCurrentEvent(eventid);
		dao.deleteEvent(event);

		return "redirect:/events/" + event.getEvent();
	}

	@GetMapping("/allbookings")
	public String allBookings(Model m, HttpSession session) {
		Users user = (Users) session.getAttribute("user");
		if (user == null) {
			return "redirect:homepage";
		} else {

			List<EventBookings> allbookings = dao.getAllBookings();
			m.addAttribute("allbookings", allbookings);
			return "AllBookings";
		}
	}
	
	
	

}
