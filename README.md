[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/trwb_8GS)


# 🌩️ Cloud Application and Development Foundation  
## Course Project: College Management System  

> *Department of Software Engineering*  
> *Nepal College of Information Technology (NCIT)*  
> *Pokhara University*  

---

## 🧑‍🤝‍🧑 Team Members  
### Group Number: XX  
| Name               | Roll Number | Role            |  
|--------------------|-------------|-----------------|  
| Laxman Khatri      | 221623          | Frontend Dev    |  
| Denisha Adhikari   | 221651          | Backend Dev     |  
| Abhishek Bhattarai | 221605          | Mobile App Dev  |  

---


## 📌 Project Abstract

This project is a web-based **College Management System** that enables secure and efficient handling of student data, department records, and enrollment operations using modern cloud-based and containerized web technologies.

It addresses the need for lightweight, fast, and scalable solutions in academic institutions to reduce manual paperwork and streamline record keeping, especially relevant in today’s cloud-native education systems.

The project demonstrates RESTful service design, secure user authentication, and full CRUD operations for students, courses (departments), and enrollments using a modular FastAPI backend and a dynamic HTML/JS frontend.

---

## ⛳ Problem Statement

- **Challenge:** Manual student, department, and enrollment record systems are prone to errors and inefficiency.
- **Context:** Digitizing these operations in a cloud-deployable app improves accessibility, reliability, and efficiency.
- **Impact:** Helps academic institutions better manage administrative operations while introducing students to containerized and secure cloud-native application development.

---

## 🎯 Project Objectives

- Build a secure, cloud-deployable **web application** using FastAPI and PostgreSQL.
- Provide CRUD functionality for Students, Departments, and Enrollments.
- Use OAuth2 JWT-based authentication to protect sensitive endpoints.
- Containerize the application using Docker for portable deployment.
- Maintain a clean and interactive UI using HTML, CSS, and JavaScript.

---

## 🏗️ System Architecture

```
Frontend (index.html)
   |
   |---> REST API (FastAPI)
         |-- Authentication (JWT)
         |-- Student Routes
         |-- Department Routes
         |-- Enrollment Routes
         |
         ---> PostgreSQL Database (via SQLAlchemy ORM)
```

---

## 🔧 Technologies & Tools Used

### ☁️ Cloud & Containerization
- Docker, Docker Compose  
- Deployed on AWS EC2 

### 💻 Languages
- Python  
- HTML5, CSS3  
- JavaScript  

### 🗄️ Database
- PostgreSQL  

### 🛠️ Backend Libraries
- FastAPI  
- SQLAlchemy  
- asyncpg  
- python-jose  
- passlib  
- Jinja2  

---

## 🚀 Implementation Highlights

- Modular FastAPI backend (`students`, `courses`, `enrollments` routers)
- HTML form authentication using `OAuth2PasswordRequestForm`
- JWT-based token issuance and verification
- Middleware to protect endpoints and allow session-based visibility
- Dynamic HTML page (`index.html`) that shows/hides content post-login

---

## 🌌 Testing & Validation

- Tested routes via Swagger UI (`/docs`)
- Login and authentication validated with token
- Frontend tested in modern browsers
- Dockerized deployment validated on local and remote EC2

---

## 📁 Repository Structure

```
college-management-system/
│
├── auth.py              # Authentication logic (JWT, password hash)
├── main.py              # FastAPI app entry point
├── database.py          # DB engine and config
├── models.py            # SQLAlchemy models
├── routers/
│   ├── students.py
│   ├── courses.py
│   └── enrollments.py
├── templates/
│   └── index.html       # Main HTML frontend
├── static/              # CSS, JS files
├── requirements.txt     # Python dependencies
├── Dockerfile
├── docker-compose.yml
└── README.md
```

---

## 🧪 Local Setup (Without Docker)

### Step 1: Clone Repository

```bash
git clone https://github.com/your-username/college-management-system.git
cd college-management-system
```

### Step 2: Set Up Virtual Environment

```bash
python -m venv venv
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate   # Windows
```

### Step 3: Install Dependencies

```bash
pip install -r requirements.txt
```

### Step 4: Configure PostgreSQL  
Set up a PostgreSQL DB and update connection string in `database.py`.

### Step 5: Run the Server

```bash
uvicorn main:app --reload
```

---

## 🐳 Docker Deployment

### Step 1: Build and Run

```bash
docker-compose up --build
```

### Step 2: Access the App

```url
http://localhost:8080
```

---

## 🔐 Login Credentials (Default)

```makefile
Username: laxman  
Password: secret  
```

> You can change this in `auth.py`.

---

## 📈 Future Enhancements

- Add Update/Delete for Students, Departments, Enrollments  
- Export data as CSV  
- Add Admin Dashboard Analytics  
- Extend with React frontend (coming soon)  
- Develop additional REST APIs for advanced filtering and reporting  
- Implement role-based access control (RBAC)  
- Add user registration page and flow  
- Integrate CI/CD pipeline with GitHub Actions  
- Enhance security with OAuth2 scopes and refresh tokens  
- Add support for bulk data import/export  
- Improve UI/UX with responsive design and accessibility features  

---


## 🙏 Acknowledgments

- NCIT Faculty Mentors  
- Open Source FastAPI Docs  
- Contributors to FastAPI, Docker, SQLAlchemy  

---

## 📚 References

- [FastAPI Docs](https://fastapi.tiangolo.com)  
- [Docker Docs](https://docs.docker.com)  
- [PostgreSQL](https://www.postgresql.org)  
- [Python JWT](https://pyjwt.readthedocs.io)
