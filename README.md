## 📝 Online Examination Project

This project is a real-time web application developed using **Java Server Pages (JSP)** and **MySQL**. It simulates an online examination system where users can take exams, and administrators can manage questions and view results.

### Project Structure

```
OnlineExaminationProject/
├── src/                    # Java source files
│   └── ...                 # Java packages and classes
├── WebContent/             # Web content directory
│   ├── META-INF/           # Metadata files
│   ├── WEB-INF/            # Web application configuration
│   │   └── web.xml         # Deployment descriptor
│   ├── css/                # Stylesheets
│   ├── js/                 # JavaScript files
│   ├── images/             # Image assets
│   ├── index.jsp           # Home page
│   ├── login.jsp           # Login page
│   ├── register.jsp        # Registration page
│   ├── exam.jsp            # Exam interface
│   └── result.jsp          # Result display
├── build.xml               # Build configuration file
└── README.md               # Project documentation
```

### Project Objectives

* Provide a platform for users to take online exams.
* Allow administrators to manage exam questions and view results.
* Implement user authentication and session management.([GitHub][1])


### Features

* **User Registration and Login**: Users can create accounts and log in to access exams.
* **Exam Interface**: Users can take exams with multiple-choice questions.
* **Result Calculation**: After submission, the system calculates and displays the user's score.
* **Admin Panel**: Administrators can add, update, or delete exam questions and view user results.


### 🛠 Technologies Used

* **Frontend**: HTML, CSS, JavaScript, JSP
* **Backend**: Java Servlets, JSP
* **Database**: MySQL
* **Server**: Apache Tomcat

### Local Setup

1. **Prerequisites**:

   * Java Development Kit (JDK) installed.
   * Apache Tomcat server installed.
   * MySQL database installed.

2. **Clone the Repository**:

   ```bash
   git clone https://github.com/Shaikr786/OnlineExaminationProject.git
   ```

3. **Set Up the Database**:

   * Create a new MySQL database (e.g., `online_exam`).
   * Import the provided SQL script to create necessary tables.([GitHub][2])

4. **Configure the Project**:

   * Update database connection settings in the Java files (e.g., database URL, username, password).

5. **Deploy to Tomcat**:

   * Place the project in the `webapps` directory of your Tomcat server.
   * Start the Tomcat server.

6. **Access the Application**:

   * Open a web browser and navigate to `http://localhost:8080/OnlineExaminationProject/`.

## 📬 Feedback & Contributions

Contributions are welcome! Feel free to fork the repository and submit pull requests. For any issues or suggestions, please open an issue in the repository.
