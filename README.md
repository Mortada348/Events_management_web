# Events Management System

This is a web-based **Events Management System** developed using **.NET Core** with a layered architecture. It includes two main portals:

- **Admin Portal:** Manage users, events, and lookup values.
- **Public Portal:** Allow users to view events and enroll.

## Features

### Admin Portal
- Manage and CRUD operations on users, events, and lookup tables
- Secure access via JWT authentication
- Dashboard and management views using Bootstrap UI

### Public Portal
- View available events
- Enroll/register for events
- Dynamic interaction via AJAX and jQuery

## Tech Stack

- **Backend:** ASP.NET Core with layered architecture (Repositories, Services, Interfaces)
- **Authentication:** JWT
- **Frontend:** 
  - `.aspx` pages for views
  - JavaScript (AJAX, jQuery)
  - Bootstrap for styling

## Architecture

This project follows a clean, maintainable layered structure:
Project/
├── Controllers/ # ASP.NET MVC controllers
├── Services/ # Business logic layer
├── Repositories/ # Data access logic
├── Interfaces/ # Abstractions for services and repos
├── Models/ # Data models and DTOs
├── Views/ # .aspx UI pages
├── wwwroot/ # Static assets (CSS, JS, images)
└── Program.cs / Startup.cs # App configuration


