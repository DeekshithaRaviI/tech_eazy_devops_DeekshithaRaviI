# Automate EC2 Deployment - DevOps 1st Assignment

## 📌 Description
This project demonstrates how to automate the deployment of a Java-based application on an AWS EC2 instance using DevOps practices.  
The main goal of the assignment is to set up an EC2 instance, install required dependencies, build and deploy an application from a GitHub repository, and verify its accessibility via the browser.

---

## 📚 Table of Contents
1. [Assignment Objective](#assignment-objective)
2. [Services Used](#services-used)
3. [What I Did](#what-i-did)
4. [Setup Instructions](#setup-instructions)
5. [Application Verification](#application-verification)
6. [Screenshots](#screenshots)
7. [Conclusion](#conclusion)

---

## Assignment Objective
- Sign up for AWS Free Tier.
- Launch an EC2 instance of a specific type.
- Install required dependencies (Java 21, Maven).
- Clone a GitHub repository and build the project using Maven.
- Run the application and verify output on port 80.
- Ensure security and stop the instance after usage.
- No AWS secrets stored in code, all sensitive data handled via environment variables.

---

## Services Used
- **AWS EC2** – For hosting the application.
- **Amazon Linux 2** – Operating system for EC2.
- **Java 21** – Application runtime.
- **Maven** – Build tool for compiling Java application.
- **GitHub** – Source code repository for the application.

---

## What I Did
1. Created an AWS account and logged into the console.
2. Launched an EC2 instance of type `t2.micro` under Free Tier.
3. Configured security group to allow SSH (22) and HTTP (80).
4. Connected to EC2 via SSH.
5. Installed Java 21 and Maven.
6. Cloned the given GitHub repository for the Java application.
7. Built the application using Maven.
8. Started the application with `java -jar`.
9. Verified application in the browser using the EC2 Public IP.
10. Ensured application returned: **"Hello from Spring MVC"**.
11. Stopped the EC2 instance for cost-saving.

---

##  Setup Instructions
- **Instance Type**: t2.micro
- **OS**: Amazon Linux 2
- **Dependencies**: Java 21, Maven
- **Repository Used**: [Test Repo for DevOps](https://github.com/Trainings-TechEazy/test-repo-for-devops)

---

## Application Verification
- Accessed in browser:  
  `http://<EC2-Public-IP>/hello`  
- Expected Output:  
  **Hello from Spring MVC**

---

## Screenshots
### 1. EC2 Instance Running
<img width="1920" height="1022" alt="Screenshot (265)" src="https://github.com/user-attachments/assets/25ed1f70-8a7b-4509-93a2-16038969d32d" />


### 2. Java Installation
<img width="1920" height="1022" alt="Screenshot (266)" src="https://github.com/user-attachments/assets/c125c5f0-286e-495b-b4b5-36cd63eed312" />



### 3. Maven Build Success
<img width="1920" height="1022" alt="Screenshot (267)" src="https://github.com/user-attachments/assets/54936673-e2c6-4c05-a8fe-eb9dbdfd3478" />



### 4. Application Output
<img width="1920" height="1022" alt="Screenshot (263)" src="https://github.com/user-attachments/assets/65861849-61c4-4eb3-b1b4-bd762a4dd410" />


---

## Conclusion
This assignment successfully automated the process of launching an EC2 instance, installing dependencies, building, and deploying a Java application. The application was verified to be running successfully on the EC2 public IP via port 80.

---
