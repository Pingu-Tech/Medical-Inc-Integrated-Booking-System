# Integrated Medical Booking System

**Developed by: PINGU TECH - Where Ideas March Forward**

## About PINGU TECH
PINGU TECH delivers secure, cloud-based healthtech platforms and AI-driven e-commerce solutions. Powered by a modern microservices architecture, our focus is on building scalable systems that drive operational efficiency. 

## Project Overview
This repository houses the requirements, specifications, and reference documentation for the Integrated Medical Booking System commissioned by Medical Inc. The project aims to drive the digital transformation of Medical Inc.'s operations by replacing their current manual appointment processes with a centralized, web-based platform. [cite: 23]

The primary goal of this system is to support the increasing customer clientele, ensure operational scalability, and resolve current inefficiencies such as double-booking and high administrative overhead. [cite: 24]

### Key Objectives & Metrics
* **Deployment Scope:** Deliver a fully functional, PDPA-compliant system deployed across 3 clinic locations. [cite: 26]
* **Efficiency Gains:** Target a 40% reduction in administrative scheduling tasks. [cite: 26]
* **Data Integrity:** Ensure absolute accuracy and real-time synchronization across 3 clinic locations, achieving 100% data consistency. [cite: 26, 89]

## Technical Architecture Highlights
* **Cloud Infrastructure:** Utilizes a centralized cloud relational database (e.g., Amazon RDS) with strong consistency. [cite: 107, 109]
* **Real-Time State Management:** Employs WebSocket or polling mechanisms to reflect booking status changes within seconds. [cite: 110] Includes a pessimistic locking mechanism with a Time-To-Live (TTL) of exactly 300 seconds (5 minutes) during checkout. [cite: 46, 47]
* **Security & Compliance:** Integrates with a certified payment gateway via API, storing the Transaction Reference ID and Payment Status for audit trails, but never persisting the PAN or CVV codes. [cite: 77, 78] All transmission of this data occurs over TLS 1.3 or higher. [cite: 79] The system also utilizes SingPass for authentication. [cite: 164]

## Repository Organization
The repository is structured to enhance vendor collaboration: [cite: 141]

* `/docs` - Contains the Project Specification PDF and addenda [cite: 142]
* `/resources` - Houses wireframes, compliance guidelines, and API references [cite: 143]
* `/reference` - Includes PDPA checklists, MOH guidelines, and third-party integration docs [cite: 145]
* `/updates` - Logs document version history and change requests [cite: 146]