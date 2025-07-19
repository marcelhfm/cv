#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Marcel Hofmann"
#let location = "Munich, Germany"
#let email = "marcel@hofmania.de"
#let github = "github.com/marcelhfm"
#let phone = "+49 176 60335763"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  phone: phone,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of applied sciences Munich",
  location: "Munich, Germany",
  dates: dates-helper(start-date: "2024", end-date: "present"),
  degree: "Master of Science, Computer Science (Focus: Embedded Computing), Current Grade: 1.4",
)
- *Simulated KUKA KR6 robot solving a puzzle*. Part of the robot and visualization team, implementing interpolation, kinematics and visualization of the robot. System running on ROS2, visualization on OpenGL + Qt based Coin3D. (C++, Python)  
- *1st place VDI Autonomous Driving Challenge.* Autonomous driving of a model car using computer vision (1:40). Part of the trajectory team. (C++, ROS2)

#edu(
  institution: "University of applied sciences Munich",
  location: "Munich, Germany",
  dates: dates-helper(start-date: "2020", end-date: "2024"),
  degree: "Bachelor of Science, Business Informatics, Grade: 1.4",
)
- Bachelor's Thesis: Identification of research gaps in the state of science and practice in the detection of data anomalies

== Work Experience

#work(
  title: "Backend & Data Engineer",
  location: "Munich, Germany",
  company: "DeepImmo",
  dates: dates-helper(start-date: "2024", end-date: "present"),
)
- *Streaming Scraping of Property Listings.* High concurrency streaming, real-time streaming processing using Pyspark on Databricks. Daily processing of over 100k listings. (Python, Pyspark, Typescript)
- *Data Platform.* Data processing on databricks with pyspark. Large scale geometric processing using h3. (Python, Pyspark)
- *Vector Tilesets.* Generation of Germany-Wide Vector Tilesets, creating diverse maps like general location quality and point of interest based maps. (Go, Typescript)

#work(
  title: "Full Stack Engineer",
  location: "Munich, Germany",
  company: "Codestryke",
  dates: dates-helper(start-date: "2022", end-date: "2024"),
)
- *Lead Backend Engineer for an insurance based IoT-Platform.* High-Availability IoT data ingestion, preprocessing and real time event generation. Multi-Tenant Architecture with infrastructure provisioning on Azure. (MQTT, REST, Typescript)
- *Fullstack Engineer for an IoT-Monitoring Dashboard.*  Realtime monitoring of 3D-Printers, timeseries data ingestion and preprocessing, alerting. Deployed on Mindsphere, the Siemens IoT-Platform and AWS. (GraphQL, REST, Typescript, React)

#work(
  title: "Working Student",
  location: "Munich, Germany",
  company: "Siemens Health Insurance (SBK)",
  dates: dates-helper(start-date: "2021", end-date: "2022"),
)
- *Project Management App and Web.* UI and UX research. Integration Testing.


== Projects

#project(
  name: "Home IoT Setup.",
)
- *IoT-Hub.* Go based IoT-Hub with basic timeseries data visualization. (Go)
- *Air Quality Sensor.* Air quality sensor with a OLED display, built on a Raspberry Pico W with freeRTOS. TCP Connection to IoT-Hub for Data Ingestion, UDP for remote logging. (C, freeRTOS, I2C)
- *Plant Irrigation Sensor* ESP32-C3 based plant irrigation sensor. OTA support, remote logging, MQTT data transfer. (C, MQTT, ESP-IDF)

== Skills
- *Programming Languages*: Python, C, C++, Go, Typescript 
- *Technologies/Keywords*: freeRTOS, RIOT OS, Zephyr, ESP-IDF, Docker, Terraform, MQTT, I2C, SPI, AWS, Azure, K8s, Pyspark, Databricks, React
