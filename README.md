[![Actions Status](https://github.com/INafanya/python-project-52/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/INafanya/python-project-52/actions)
[![CI](https://github.com/INafanya/python-project-52/actions/workflows/ci.yml/badge.svg)](https://github.com/INafanya/python-project-52/actions/workflows/ci.yml)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=INafanya_python-project-52&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=INafanya_python-project-52)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=INafanya_python-project-52&metric=coverage)](https://sonarcloud.io/summary/new_code?id=INafanya_python-project-52)

# Task manager
Web service on Django for create, track, and manage tasks with statuses and labels.

### [Task manager Demo](https://python-project-52-vmk1.onrender.com)
---
### **Features**
- User authentication and authorization
- Task management (create, read, update, delete)
- Status management for tasks
- Label management for task categorization
- Filter tasks by status, executor, labels, and author
- Internationalization support (i18n)
- Responsive design
---
### **Tech Stack**
- Python 3.13
- Django 4+
- Bootstrap 5
- SQLite, PostgreSQL
---
### **Project Structure**
```bash
task_manager/
├── users/         # User management
├── tasks/         # Task management
├── statuses/      # Task status management
├── labels/        # Task labels management
├── templates/     # HTML templates
├── locale/        # i18n translations
└── settings.py    # Project configuration
```
---
### **Setup and installation**
Clone the repository:
```bash
git clone https://github.com/INafanya/python-project-52.git
```
Install Python dependencies inside a virtual environment:
```bash
make install
```
Copy example environment and edit it if needed:
```bash
cp .env_template .env
```
Start the application:
```bash
make run
```
---
## **For development**
Install Python dependencies inside a virtual environment:
   ```bash
   make install
   ```
Runing test:
   ```bash
   make test
   ```
Checking for code style:
   ```bash
   make lint
   ```
