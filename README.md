# HSTU\_T\&S\_HUB: A Real-Time Communication System

---

**Table of Contents**

* List of Figures
* List of Tables
1.  **Introduction**
    1.1. Background
    1.2. Problem Statement
    1.3. Motivation
    1.4. Objectives
2.  **Related Work**
3.  **Requirement Specifications**
    3.1. Functional Requirements
    3.2. Non-functional Requirements
4.  **System Development**
    4.1. SDLC Model: Iterative Model
    4.2. Technology Stack
    4.3. System Architecture and Module Development
5.  **Results and Discussion**
    5.1. The Teacher's Experience
    5.2. The Student's Experience
6.  **Economic Analysis**
    6.1. Cost Analysis
    6.2. Benefit Analysis
7.  **Conclusion**
    7.1. Conclusive Summary
    7.2. Limitations of the Project
    7.3. Recommendation/Future Work
8.  **References**

---

**List of Figures**

*(Note: Page numbers are placeholders and should be updated in the final document.)*

* Figure 3.1: Survey Responses - Level & Semester .......................... p. X
* Figure 3.2: Survey Responses - Faculty .................................... p. X
* Figure 4.1: UML Diagram of System Architecture .......................... p. X
* Figure 5.1: Teacher's Dashboard Screenshot .............................. p. X
* Figure 5.2: Quiz Creation Interface Screenshot .......................... p. X
* Figure 5.3: Quiz Analytics Dashboard Screenshot ......................... p. X
* Figure 5.4: Student List & CR Management Screenshot ..................... p. X
* Figure 5.5: Student's Dashboard Screenshot .............................. p. X
* Figure 5.6: Resource Sharing Feed Screenshot ............................ p. X
* Figure 5.7: Smart Alarm Interface Screenshot ............................ p. X
* Figure 5.8: AI Assistant Conversation Screenshot ........................ p. X

---

**List of Tables**

*(Note: Page numbers are placeholders and should be updated in the final document.)*

* Table 2.1: Comparative Analysis of Existing Systems .................... p. X
* Table 3.1: Summary of Functional Requirements .......................... p. X
* Table 4.1: SDLC Iteration Breakdown .................................... p. X
* Table 4.2: Technology Stack Summary .................................... p. X
* Table 4.3: Firestore Database Schema Overview .......................... p. X
* Table 6.1: Cost-Benefit Analysis Summary ............................... p. X

---

### **Abstract**

The "HSTU T&S HUB" project represents a significant leap forward in digitalizing the academic environment at Hajee Mohammad Danesh Science and Technology University. It is a comprehensive, mobile-first academic portal developed using Flutter, conceived to bridge the persistent digital and communication gap between students and teachers. This application directly confronts the inefficiencies arising from a lack of a centralized platform for core academic activities. It achieves this by seamlessly integrating a suite of powerful, interconnected features. These include a secure, role-based authentication system that differentiates between student and teacher privileges; a dynamic, real-time classroom allocation module equipped with intelligent conflict prevention; and a complete online quiz system that supports both automated (MCQ) and manual (written) evaluation, complemented by data-driven analytics for faculty.

Furthermore, the system incorporates a multi-layered communication suite to foster collaboration, featuring both a public forum for students and a private, dedicated channel for Class Representatives and teachers. A standout feature is the smart alarm system, which moves beyond manual reminders by automatically scheduling alerts for allocated classes based on user-defined preferences. The application's robust functionality is powered by a hybrid backend architecture, strategically utilizing Firebase for core services like authentication, Firestore database management, and real-time notifications, while leveraging Supabase for efficient, scalable file storage and resource sharing. Developed using an agile Iterative SDLC model, the application not only delivers on functionality but also on user experience, boasting a modern, intuitive interface. This is enhanced by an AI-powered assistant for instant query resolution, a real-time resource sharing feed, and easy access to the complete course syllabus. Ultimately, the HSTU T&S HUB aims to fundamentally enhance academic efficiency, streamline communication, and cultivate a more connected, productive, and modern campus experience for the entire university community.

---

### **1. Introduction**

#### **1.1. Background**

In the contemporary educational landscape, the integration of digital tools has transitioned from a supplementary convenience to an absolute necessity for effective academic management and pedagogy. The global shift towards digital transformation has profoundly impacted higher education, compelling institutions to rethink traditional models of teaching, communication, and administration. Universities worldwide are increasingly expected to provide a seamless, integrated digital environment that reflects the interconnected nature of modern life. However, many institutions, including Hajee Mohammad Danesh Science and Technology University (HSTU), often grapple with a legacy of fragmented systems. This technological dissonance creates a significant operational bottleneck.

Currently, the academic workflow for both students and faculty is scattered across a multitude of disconnected platforms. Official announcements might be posted on physical notice boards or the university website, while course materials are often distributed via email. Class-specific discussions and urgent updates frequently occur on informal social media platforms like Facebook or WhatsApp groups. This fragmentation forces students and teachers to constantly navigate between different applications and physical locations to gather essential information, leading to a disjointed and often frustrating user experience. This systemic inefficiency results in tangible negative consequences: critical information is easily missed, communication becomes unreliable, and valuable time is lost managing multiple channels. For an institution dedicated to science and technology, this reliance on outdated and ad-hoc methods represents a significant gap between its mission and its operational reality.

#### **1.2. Problem Statement**

The core problem this project addresses is the critical absence of a unified, mobile-accessible platform at Hajee Mohammad Danesh Science and Technology University (HSTU) that consolidates all essential academic activities. This technological void forces students and faculty to operate within a fragmented and inefficient digital ecosystem, leading to a series of distinct, yet interconnected, challenges that hinder academic productivity and communication. These challenges are:

* **Inefficient Classroom Management and Booking:** The current process for allocating and booking classrooms is largely manual or semi-automated, relying on disparate schedules and direct communication. This creates a significant administrative burden and is highly susceptible to human error, frequently resulting in scheduling conflicts, double-bookings, or underutilization of available spaces. For Class Representatives (CRs) and teachers, finding an available room becomes a time-consuming task of cross-referencing and communication, rather than a simple, transparent digital process.
* **Lack of a Standardized Online Assessment Platform:** In the absence of an official, integrated tool, online quizzes and assessments are conducted using a variety of non-standardized, third-party platforms (e.g., Google Forms, social media polls). This approach lacks consistency, poses potential security risks, and fails to provide the robust features required for formal academic evaluation, such as timed questions, support for diverse question formats (like written answers), automated grading, and centralized performance analytics for teachers.
* **Ineffective and Disorganized Distribution of Academic Resources:** The distribution of essential academic materials—such as lecture notes, assignments, and important notices—is currently ad-hoc. Materials are scattered across emails, social media groups, and other informal channels. This creates a disorganized repository where files can be easily lost, students who join a course late may miss previously shared materials, and there is no single, authoritative source for course content.
* **Fragmented and Unreliable Communication Channels:** Communication between teachers, students, and CRs is severely fragmented. Official announcements may be missed if not seen on a physical notice board, while critical, time-sensitive discussions happen in informal chat groups. This creates a communication breakdown where there is no single, official channel for academic discourse, leading to misinformation, delays, and a lack of an auditable trail for important academic conversations, particularly between faculty and designated student representatives.
* **Absence of Proactive and Automated Reminders:** The current system is entirely reactive, placing the full cognitive load of schedule management on the students. Without an integrated system to provide automated and timely reminders, students are more likely to miss important events such as scheduled classes, quiz deadlines, or room allocation changes. This lack of a proactive notification and smart alarm system directly impacts student attendance, participation, and overall academic performance.

#### **1.3. Motivation**

The motivation behind the "HSTU T&S HUB" project is to create a seamless, all-in-one digital ecosystem for the HSTU community. The goal is to enhance the academic experience by providing a single, reliable, and feature-rich application that automates administrative tasks, streamlines communication, and provides easy access to information, thereby saving time and improving overall productivity for both students and faculty.

This motivation is rooted in several key factors that reflect the evolving needs of modern higher education:

* **Enhancing Administrative Efficiency and Reducing Overhead:** A significant motivation was to alleviate the administrative burden on faculty and staff. The manual processes of classroom allocation, quiz creation, and result compilation are not only time-consuming but also prone to human error. By automating these tasks, the application frees up valuable time for educators, allowing them to focus more on their primary responsibilities of teaching, research, and student mentorship.
* **Empowering Students with Real-Time Information and Proactive Tools:** The project was driven by the desire to empower students and reduce the cognitive load associated with managing their academic lives. In a fragmented system, students bear the full responsibility of tracking multiple platforms for updates. This application shifts that paradigm by providing a single source of truth and proactive tools like the smart alarm system and real-time notifications. This ensures students are always informed and can focus more on their studies rather than on administrative logistics.
* **Fostering a More Connected and Collaborative Academic Community:** The lack of a centralized communication platform often leads to a disconnected campus community. This project was motivated by the need to create official, reliable channels for academic discourse. By integrating features like a public student chat and a private channel for CRs and teachers, the application aims to foster a stronger sense of community, improve collaboration, and ensure that communication is both efficient and effective.
* **Enabling Data-Driven Academic Insights:** A key motivation was to provide faculty with actionable data to improve their teaching methodologies. The online quiz system, with its detailed analytics, offers immediate insights into student performance, highlighting areas where students may be struggling. This data-driven approach enables teachers to tailor their instruction to better meet the needs of their students, fostering a more effective learning environment.
* **Modernizing the University's Digital Infrastructure:** For a leading science and technology university, having a modern, efficient digital infrastructure is not just a convenience—it is a reflection of its identity and commitment to innovation. This project was motivated by the desire to align HSTU's operational reality with its forward-thinking mission, providing a state-of-the-art tool that meets the expectations of today's tech-savvy students and faculty.

#### **1.4. Objectives**

The primary objectives of this project were meticulously defined to address the identified problems and achieve the overall vision of creating a unified digital ecosystem. Each objective targets a specific functional area, aiming to deliver a robust and feature-rich application:

* **To Develop a Secure and Role-Based Authentication System:** The foremost objective was to establish a secure gateway to the application's ecosystem. This involved creating a robust authentication mechanism that not only verifies user identity via email and password but also intelligently differentiates between two distinct user roles: "Student" and "Teacher." The system was designed to direct each user to a personalized dashboard with features and permissions tailored specifically to their role, thereby ensuring data privacy and a relevant user experience from the moment they log in.
* **To Build a Real-Time, Cross-Platform Application:** A central goal was to develop a single, high-performance application that functions seamlessly on the Android platform, built using a single codebase with Flutter. This objective also emphasized real-time data synchronization. The application was engineered to ensure that any new information—such as a new resource being shared, a room being allocated, or a new chat message—is instantly reflected across all relevant user devices without requiring manual refreshing, leveraging the real-time capabilities of Firebase and Supabase.
* **To Implement a Real-Time Classroom Allocation System with Conflict Detection:** This objective focused on solving the logistical challenge of classroom management. The goal was to create a dynamic system where authorized users (CRs and teachers) could view the live availability of classrooms and book them for specific time slots. A critical part of this objective was to engineer an intelligent conflict detection mechanism that queries the database in real-time to prevent any double-bookings, thereby eliminating scheduling errors and maximizing the efficient utilization of university resources.
* **To Build a Comprehensive Online Quiz Module:** The aim here was to create a complete, end-to-end assessment tool within the application. This objective was twofold: first, to empower teachers with the ability to create versatile quizzes that support both objective (MCQ) and subjective (Written) question types, with per-question time limits. Second, to provide students with a modern and intuitive interface for taking these assessments, and to furnish teachers with a dedicated portal for evaluating written answers and viewing detailed performance analytics, including visual data representations like score distribution charts.
* **To Create a Multi-Layered Communication Suite:** To streamline academic communication, this objective was to design and implement a structured, multi-layered communication system. This involved creating a public, community-driven chat channel for all students to foster collaboration and general discussion. In parallel, a private and secure one-to-one communication channel was developed exclusively for Class Representatives (CRs) and teachers, ensuring that official and sensitive academic conversations remain confidential and are directed to the appropriate individuals.
* **To Facilitate Seamless Sharing of Academic Resources:** This objective was to create a centralized and reliable system for the distribution of academic materials. The goal was to empower teachers to easily upload and share various types of resources, including lecture notes, images, and PDF documents. For students, the objective was to provide a real-time feed where these resources would appear instantly, creating a single, authoritative repository for all course-related materials that is easily accessible from their mobile devices.
* **To Integrate a Smart and Proactive Alarm System:** Moving beyond simple reminders, this objective was to develop a "smart" alarm system that reduces the cognitive load on students. The system was designed to support both manual alarms for personal use and, more importantly, to automatically schedule native device alarms for upcoming academic events. This was achieved by intelligently integrating with the classroom allocation data and allowing students to set their own notification preferences (e.g., "remind me 15 minutes before class").
* **To Develop an AI-Powered Assistant for Instant Support:** The final key objective was to enhance the user experience by providing an intelligent, on-demand support tool. This involved integrating the Google Gemini API to create an AI-powered chatbot. The assistant was designed not only to handle general queries but also to be context-aware, with the ability to query the application's live Firestore database to provide real-time, accurate answers to specific questions about the system's data (e.g., "How many students are registered?").
* **To Design a Modern and Engaging User Interface:** A core objective was to move beyond purely functional design and create a visually appealing and highly engaging user experience. This was achieved by implementing a modern UI/UX design language featuring Glassmorphism, dynamic animations, and a consistent, aesthetically pleasing theme, with the goal of increasing user adoption and satisfaction.
* **To Formalize and Empower the Class Representative (CR) Role:** A specific objective was to create a dedicated administrative tool for teachers to formally manage the CR role. This included functionality to appoint and remove a student as the CR, which in turn grants them specific permissions within the app (like room allocation). This formalizes a critical student leadership position and streamlines the associated administrative tasks.
* **To Establish a Centralized Information Hub:** The project aimed to eliminate information silos by creating a single, authoritative source for key academic information. This was realized through the development of a comprehensive, easily navigable course syllabus viewer and a direct, one-click integration with the official university website, ensuring students always have access to accurate and up-to-date information.

---

### **2. Related Work**

A review of existing systems reveals a landscape of general-purpose Learning Management Systems (LMS) and specialized tools.

**Table 2.1:** Comparative Analysis of Existing Systems

| Feature/Aspect | HSTU T&S HUB | Google Classroom | Moodle | Canvas | Blackboard Learn | Microsoft Teams |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Primary Purpose** | Integrated University Hub | General-purpose LMS | Open-source, customizable LMS | Enterprise-level LMS | Enterprise-level LMS | Communication & Collaboration Hub |
| **Platform** | Mobile-first (Flutter) | Web & Mobile | Web-based, with mobile app | Web-based, with mobile app | Web-based, with mobile app | Web & Mobile |
| **Quiz System** | MCQ & Written, Per-question timer, Analytics | Basic Quizzes (via Google Forms) | Highly Advanced, Numerous Question Types | Advanced, LTI Integrations | Advanced, Secure Assessment Tools | Basic (via Forms integration) |
| **Resource Sharing** | Real-time (Text, Image, PDF) | Yes (via Google Drive) | Yes (File Uploads) | Yes (File Uploads) | Yes (Content Management) | Yes (via SharePoint/OneDrive) |
| **Communication** | Public & Private Chat | Announcements, Comments | Forums, Messaging | Messaging, Discussions | Messaging, Discussions | Advanced Chat, Video Conferencing |
| **Room Allocation** | **Yes (Real-time)** | No | No | No | No | No |
| **Smart Alarm System**| **Yes (Automated)** | No | No | No | No | No |
| **CR Management** | **Yes (Formalized Role)** | No | No | No | No | No |
| **AI Assistant** | **Yes (Live Data Integrated)** | No | No | No | No | No |
| **Backend** | Hybrid (Firebase & Supabase) | Google Cloud | Self-hosted | Cloud-based (AWS) | Cloud-based / Self-hosted | Microsoft Azure |
| **Cost Model** | Low (Free Tiers) | Free (for Education) | Free (Hosting Costs) | High (Subscription) | High (Licensing) | Included with Microsoft 365 |
| **Strength** | Tailored for HSTU, all-in-one, modern UI/UX | Simple, reliable, integrated with Google Workspace | Highly customizable, extensive features | User-friendly, powerful feature set | Robust, enterprise support | Excellent for real-time collaboration |
| **Weakness** | Dependent on third-party services | Lacks university-specific administrative tools | Complex setup, dated UI | High cost, less tailored | High cost, complex interface | Lacks academic admin features |

---

### **3. Requirement Specifications**

#### **3.1. Functional Requirements**

**Table 3.1:** Summary of Functional Requirements

| Module | Key Functional Requirements |
| :--- | :--- |
| **Authentication** | Role-based login (Student/Teacher), Secure sign-in, Role verification. |
| **Profile Mgmt** | View and update profile information, Secure password change. |
| **Classroom Allocation**| Role-based booking access, Real-time availability check, Conflict detection, Self-cancellation, Public schedule view. |
| **Online Quiz** | Quiz creation (MCQ/Written), Per-question timers, Student participation, Manual evaluation for written answers, Analytics dashboard. |
| **Communication** | Public student chat, Private CR-teacher chat. |
| **Resource Sharing** | File upload (text, image, PDF) by teachers, Real-time feed for students, In-app PDF viewer. |
| **Smart Alarm** | Manual alarm setting, Automatic alarms for classes based on user preferences. |
| **AI Assistant** | Natural language queries, Live data integration from Firestore. |
| **Information Hub** | Comprehensive syllabus viewer, University website integration. |
| **CR Management** | Teacher can appoint/remove CR, automated notifications for role changes. |

#### **3.2. Non-functional Requirements**

* **Usability:** The application must be easy to learn, efficient to use, and aesthetically pleasing to ensure high user adoption and satisfaction.
    * **Learnability:** The user interface is designed to be highly intuitive, allowing new users (both students and teachers) to quickly understand and navigate the application's core functionalities without the need for extensive tutorials or documentation.
    * **Efficiency:** The workflow for common tasks, such as creating a quiz or booking a classroom, is streamlined to minimize the number of steps and clicks required, enabling proficient users to accomplish their goals quickly.
    * **Memorability:** The consistent design and logical layout ensure that casual users who return to the app after a period of inactivity can easily reestablish proficiency without having to re-learn the interface.
    * **Error Prevention:** The system incorporates mechanisms to prevent user errors, such as confirmation dialogs for critical actions (e.g., deleting an allocation or a quiz) and clear validation on all input forms.
    * **User Satisfaction:** The application employs a modern and visually engaging design language, featuring Glassmorphism, smooth animations, and a consistent theme, to create a positive and enjoyable user experience.
* **Performance:** The application must be fast, responsive, and efficient in its use of device resources.
    * **Response Time:** Critical user interactions are optimized for near-instantaneous feedback. The target is for screen transitions to complete in under 500 milliseconds and for real-time data, such as chat messages, to be delivered in under one second under normal network conditions.
    * **Resource Consumption:** The application is engineered to be lightweight, ensuring that it does not excessively drain the device's battery or consume an unreasonable amount of memory (RAM) or CPU, even during prolonged use.
    * **Network Efficiency:** The app minimizes data usage and is designed to handle varying network conditions gracefully, providing informative messages to the user during periods of low connectivity instead of crashing.
* **Security:** The system must protect user data and ensure that access is restricted to authorized individuals.
    * **Authentication & Authorization:** All access to the application is protected by the robust Firebase Authentication service. Furthermore, the system implements strict role-based authorization, ensuring that users can only access the features and data relevant to their role (e.g., a student cannot access the CR management screen).
    * **Data Security:** All communication between the mobile application and the backend services (Firebase and Supabase) occurs over encrypted channels (HTTPS/TLS) to protect data in transit. Sensitive information, such as user passwords, is not stored in plaintext.
    * **Session Management:** The application securely manages user sessions to prevent unauthorized access and ensures that users are properly logged out to protect their accounts.
* **Scalability:** The application's architecture must be able to handle a growing number of users and an increasing volume of data without a decline in performance.
    * **Backend Scalability:** The strategic choice of Firebase and Supabase as backend services is central to the application's scalability. These serverless platforms are designed to automatically scale their resources to handle increases in user load and data storage without requiring manual intervention.
    * **Concurrent Users:** The system is designed to support a high number of concurrent users, such as hundreds of students participating in a quiz simultaneously, without experiencing performance degradation.
* **Reliability:** The application must be stable, available, and function correctly under a variety of conditions.
    * **Availability (Uptime):** The system aims for high availability (e.g., 99.5% uptime), which is largely supported by the high reliability of the underlying Firebase and Supabase cloud infrastructure.
    * **Fault Tolerance:** The application is designed to handle errors gracefully. In the event of network failures or API issues, the system provides clear, informative messages to the user rather than crashing, ensuring a robust user experience.
    * **Data Integrity:** The system ensures that all data, such as quiz results and room allocations, is stored and retrieved accurately and consistently, preventing data corruption.
* **Cross-Platform Compatibility:** The choice of technology was made to ensure both current functionality and future extensibility.
    * **Single Codebase:** By using Flutter, the application is developed from a single codebase for the Android platform.
    * **Future-Proofing:** This architectural choice makes it significantly easier and more cost-effective to extend the application to support other platforms, such as iOS or a web-based portal, in the future.

---

### **4. System Development**

#### **4.1. SDLC Model: Iterative Model**

The development of this application followed the **Iterative Model**. This approach involves building the application in repeated cycles (iterations). Each iteration results in an executable, though incomplete, version of the system. This allowed for the incremental development of features, starting with a basic version and progressively adding complexity. This methodology provided the flexibility to gather feedback and make refinements after each build, ensuring the final product is well-aligned with user needs.

**Table 4.1:** SDLC Iteration Breakdown

| Iteration | Focus/Goal | Key Outcomes & Modules Developed |
| :--- | :--- | :--- |
| **1** | Foundation & Architecture | Project setup, backend integration (Firebase/Supabase), state management setup. |
| **2** | User Data Modeling | Detailed design of the Firestore database schema for all collections. |
| **3** | Authentication & Access | Functional login/registration system with role-based access control. |
| **4** | Profiles & Dashboards | Users can manage profiles and access personalized dashboards. |
| **5** | Classroom Allocation | Functional room booking system with conflict detection for authorized users. |
| **6** | Smart Alarm System | Functional alarm system with manual and automatic scheduling. |
| **7** | Notification System | Centralized system for delivering and viewing real-time notifications. |
| **8** | Quiz Module (Teacher-side) | Teachers can create and manage quizzes. |
| **9** | Quiz Module (Student-side) | Students can participate in quizzes. |
| **10**| Quiz Module (Analytics) | Detailed analytics dashboard and evaluation portal for teachers. |
| **11**| Communication Suite | Functional public and private real-time chat features. |
| **12**| Resource Sharing | Functional resource sharing system with file upload and real-time feed. |
| **13**| Information Hub | Syllabus viewer and university website integration. |
| **14**| Advanced Features | AI Assistant and CR Management tools. |
| **15**| Final Integration & Polish | Complete, feature-rich, and polished application with end-to-end testing. |

#### **4.2. Technology Stack**

**Table 4.2:** Technology Stack Summary

| Category | Technology | Role in Project |
| :--- | :--- | :--- |
| **Frontend** | Flutter | Cross-platform framework for building the entire UI and client-side logic. |
| **Backend** | Firebase | Primary backend for authentication, core database (Firestore), and notifications. |
| | Supabase | Secondary backend for file storage and real-time database for resource sharing. |
| **AI Service** | Google Gemini API | Powers the natural language processing and query-answering for the AI Assistant. |

#### **4.3. System Architecture and Module Development**

*(A UML Diagram of the System Architecture would be placed here as Figure 4.1)*

**Table 4.3:** Firestore Database Schema Overview

| Collection | Sub-collection | Purpose |
| :--- | :--- | :--- |
| **users** | notifications | Stores all user profiles (students, teachers) and their roles. Each user has a sub-collection for their personal notifications. |
| **quizzes** | questions | Stores the metadata for each quiz. Each quiz has a sub-collection containing all its question documents. |
| **results** | | Stores the results of each student's quiz attempt, linked by `quizId` and `studentId`. |
| **room_allocation**| | Stores all classroom booking information, including room, time, and allocator details. |
| **chat_rooms** | messages | Stores metadata for private chat rooms. Each room has a sub-collection for its messages. |
| **student_chat** | | Stores all messages for the public, global student chat room. |

---

### **5. Results and Discussion**

The "HSTU T&S HUB" application successfully meets all the specified objectives, delivering a feature-rich and stable platform.

*(This is where you would insert screenshots of your application to visually demonstrate each function/layer, referenced by the Figure numbers in the "List of Figures".)*

#### **5.1. The Teacher's Experience**

* **Dashboard:** A screenshot of the teacher's dashboard, showing quick access to "Set Question," "Student List," "Resources," etc.
* **Quiz Creation:** Screenshots of the `create_quiz_screen`, showing how a teacher adds MCQ and written questions.
* **Quiz Analytics:** A screenshot of the `quiz_details_screen` displaying the bar chart of student scores and the detailed results list.
* **CR Management:** A screenshot of the `student_list_screen`, showing the button to "Make CR" or "Remove" a student.

#### **5.2. The Student's Experience**

* **Dashboard:** A screenshot of the student dashboard, highlighting the different options available, including a special "Room Allocation" button if the student is a CR.
* **Resource Sharing:** A screenshot of the `student_home_screen` showing the real-time feed of resources shared by a teacher.
* **Smart Alarm:** A screenshot of the `alarm_page` showing both manually set alarms and automatically generated alarms for classes.
* **AI Assistant:** A screenshot of the `chatbot_page` showing a conversation where the AI answers a query about the number of students in the system.

---

### **6. Economic Analysis**

#### **6.1. Cost Analysis**

The development and operational costs of this project are significantly minimized due to the strategic choice of technologies:
* **Development Cost:** The primary cost is the development time. There are no software licensing fees, as Flutter and its development tools are open-source.
* **Operational Cost:** The use of Firebase and Supabase is highly cost-effective. Both platforms offer generous free tiers ("Spark Plan" for Firebase, "Free Plan" for Supabase) that are sufficient for initial deployment, testing, and handling a moderate user base. Costs would only be incurred if the application scales to a very large number of active users, exceeding the free tier limits.

#### **6.2. Benefit Analysis**

**Table 6.1:** Cost-Benefit Analysis Summary

| Benefit Category | Description |
| :--- | :--- |
| **Increased Efficiency**| Automates manual tasks like room booking, quiz creation, and MCQ grading, saving significant time for both faculty and students. |
| **Improved Communication**| Centralizes all academic communication into official channels, reducing misinformation and ensuring all users receive timely updates. |
| **Enhanced Engagement**| A modern, interactive platform with features like the AI assistant and smart alarms encourages greater student engagement with academic activities. |
| **Accessibility** | Provides 24/7 mobile access to academic resources, schedules, and tools, supporting flexible learning. |
| **Data-Driven Insights**| The quiz analytics module provides teachers with valuable data to assess student performance and refine their teaching methods. |

---

### **7. Conclusion**

#### **7.1. Conclusive Summary**

The "HSTU T&S HUB" project successfully demonstrates the development of a modern, integrated academic portal. By combining a powerful frontend with a hybrid backend, the application effectively addresses key challenges in university management. It stands as a robust, scalable, and user-centric solution poised to enhance the digital campus experience at HSTU.

#### **7.2. Limitations of the Project**

* **Offline Functionality:** The application is heavily dependent on an active internet connection. There is currently no offline support.
* **Platform Dependency:** The system relies on third-party services (Firebase, Supabase, Google), and any changes or outages on their end could affect the app.
* **Limited Content Types:** The resource sharing feature currently supports only text, images, and PDFs, not video or other media types.

#### **7.3. Recommendation/Future Work**

* **Offline Caching:** Implement local caching to allow users to access some data, like the syllabus or previously downloaded resources, while offline.
* **Video Support:** Extend the resource sharing module to support video lectures and other multimedia content.
* **Advanced Analytics:** Provide teachers with more in-depth analytics for quizzes, such as question-wise performance analysis.
* **Integration with University Systems:** Explore possibilities of integrating with official university databases for student records and results.
* **Web and iOS Versions:** Since it is built with Flutter, the project can be extended to support iOS and a web-based portal with minimal code changes.

---

### **8. References**

*(List any websites, books, or research papers you consulted during your project development.)*

* Flutter Documentation. Retrieved from [https://flutter.dev/docs](https://flutter.dev/docs)
* Firebase Documentation. Retrieved from [https://firebase.google.com/docs](https://firebase.google.com/docs)
* Supabase Documentation. Retrieved from [https://supabase.io/docs](https://supabase.io/docs)
* Google AI for Developers. Retrieved from [https://ai.google.dev/](https://ai.google.de
