# EventManagement
EventManagement

EventManagement is a robust web application developed with Spring MVC and Hibernate for managing events, attendees, and venues. It provides administrators with an intuitive interface to create, update, and delete events, while attendees can browse and register for events seamlessly.

🎯 Key Features

User Roles & Authentication

Admin users can manage events, venues, and attendee data.

Registered users can view events and register or cancel registration.

Event CRUD

Create, read, update, and delete event records.

Event details include title, description, date/time, location, and capacity.

Venue Management

CRUD operations for venues with attributes like name, address, and capacity.

Attendee Registration

Users can register for events up to the capacity limit.

Admin can view attendee lists and cancel registrations.

Search & Filtering

Search events by name, date range, or venue.

Filter events by category or status.

Hibernate ORM

Entity mapping for Event, Venue, and Attendee models.

Transaction management and lazy loading.

Validation & Error Handling

Server-side form validation with Spring Validator.

Custom error pages for 404 and 500 statuses.

🛠️ Tech Stack

Backend Framework: Spring MVC (Spring 5)

ORM: Hibernate 5

Database: MySQL / H2 (for development)

View Layer: JSP, JSTL, Bootstrap 4

Dependency Management: Maven

Build & Run: Apache Tomcat 9

📥 Prerequisites

Java 8 or higher

Maven 3.x

MySQL server (or use H2 in-memory DB)

Apache Tomcat 9 (or embedded via Maven plugin)
