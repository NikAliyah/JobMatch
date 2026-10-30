# JobMatch
Online Job Portal

A role-based online job portal for UiTM, built with CakePHP 5 and MySQL. Admins publish and manage job advertisements, while job seekers create a profile, upload a resume, apply for jobs and track their applications.

**Course:** IMS560 Advanced Database Management System, UiTM
**Group project** 

## Features

**Job seekers**
- Browse job advertisements before registering, with job title, location, type, salary and deadline
- Search by title or location and filter by category and job type
- Create a profile and upload a resume (maximum 5 MB) once, then apply to multiple jobs
- Dashboard showing total, pending, approved and rejected applications, plus recent applications and latest jobs

**Administrators**
- Dashboard with job positions, total applicants, pending review and approved counts
- Create, edit and manage job advertisements
- Review applications and schedule interviews
- Manage users
- Audit logs recording user activity such as login attempts

**General**
- Role-based access: separate Admin and Job Seeker interfaces with session-based authentication
- Responsive layout with a collapsible sidebar and a light and dark mode toggle

## Application workflow
1. User registers or logs in
2. User completes their profile and uploads a resume
3. User browses job vacancies and submits an application
4. Admin reviews the application
5. If qualified, admin schedules an interview. If not, the application is rejected
6. Application status is updated and shown on the user's dashboard

## Database
The database is named `jobmatch` and has seven tables:

| Table | Purpose |
|---|---|
| `users` | Login details and account information |
| `roles` | Access levels for administrators and job seekers |
| `members` | Extra profile information for users |
| `advertisements` | Job postings |
| `applications` | Applications from members to advertisements |
| `interviews` | Interview date, time, location and notes for an application |
| `audit_logs` | User and system activity |

## Tech stack
| Component | Version |
|---|---|
| CakePHP | 5.2 |
| PHP | 8.3 |
| MySQL | 8.4 |
| Apache | 2.4 |
| Bootstrap | 5.x |
| Composer | 2.x |

Development tools: Laragon, phpMyAdmin, Visual Studio Code, Google Chrome.

## Installation
**Requirements:** PHP 8.1 or above, MySQL, Composer. Laragon is the easiest way to get all three on Windows.

1. Clone the repository into your web folder (for Laragon, the `www` folder):
   ```
   git clone https://github.com/NikAliyah/jobmatch.git
   cd jobmatch
   ```
2. Install dependencies:
   ```
   composer install
   ```
3. Create a database named `jobmatch` in phpMyAdmin and import `database/jobmatch.sql`.
4. Copy `config/app_local.example.php` to `config/app_local.php` and set your database name, username and password under `Datasources`.
5. Start the application, either through your Laragon virtual host or with:
   ```
   bin/cake server
   ```
6. Open the address shown in the terminal (usually `http://localhost:8765`).

## Demo accounts
| Role | Email | Password |
|---|---|---|
| Admin | admin@admin.com | Admin123! |
| Job seeker | aliyah@gmail.com | Ai@486298 |

These are demo accounts for local testing only.

## Project structure
```
├── config/        application and database configuration
├── database/      jobmatch.sql
├── report/        project report (PDF)
├── screenshots/   interface of the system
├── src/           controllers and models
├── templates/     views
├── webroot/       public assets
└── composer.json
```

## Documentation
The full project report, including the ERD, system requirements, interface overview, features and workflow, is in [`JobMatch/report.pdf`](report.pdf).

## Limitations
- Built as a university course project and not deployed to production.

## Author
Nik Nur Aliyah Safiah
[LinkedIn](https://www.linkedin.com/in/nik-aliyah-a4626433a) | [GitHub](https://github.com/NikAliyah)
