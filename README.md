# Integrated Medical Booking System

**Developed by: PINGU TECH - Where Ideas March Forward**

## About PINGU TECH
PINGU TECH delivers secure, cloud-based healthtech platforms and AI-driven e-commerce solutions. Powered by a modern microservices architecture, our focus is on building scalable systems that drive operational efficiency. 

## Project Overview
This repository houses the requirements, specifications, and reference documentation for the Integrated Medical Booking System commissioned by Medical Inc. 

The project aims to drive the digital transformation of Medical Inc.'s operations by replacing their current manual appointment processes with a centralized, web-based platform.

The primary goal of this system is to support the increasing customer clientele, ensure operational scalability, and resolve current inefficiencies such as double-booking and high administrative overhead.

### Key Objectives & Metrics

* **Deployment Scope:** Deliver a fully functional, PDPA-compliant system deployed across 3 clinic locations. 
* **Efficiency Gains:** Target a 40% reduction in administrative scheduling tasks.
* **Data Integrity:** Ensure absolute accuracy and real-time synchronization across 3 clinic locations, achieving 100% data consistency.

## Technical Architecture Highlights
* **Cloud Infrastructure:** Utilizes a centralized cloud relational database (e.g., Amazon RDS) with strong consistency.
* **Real-Time State Management:** Employs WebSocket or polling mechanisms to reflect booking status changes within seconds. Includes a pessimistic locking mechanism with a Time-To-Live (TTL) of exactly 300 seconds (5 minutes) during checkout.
* **Security & Compliance:** Integrates with a certified payment gateway via API, storing the Transaction Reference ID and Payment Status for audit trails, but never persisting the PAN or CVV codes. 
All transmission of this data occurs over TLS 1.3 or higher. The system also utilizes SingPass for authentication.

## Repository Organization
The repository is structured as follows:
## Repository Organization
The repository is structured as follows:

```text
medical-inc-booking-system/
├── .github/                 # CI/CD workflows for automated testing and deployment
├── assets/                  # Non-code assets provided by Medical Inc. (clinic logos, branding)
├── config/                  # Configuration files and environment templates
├── docs/                    # Centralized project documentation
│   ├── api/                 # API contracts and specifications (e.g., Payment Gateway, SingPass)
│   ├── architecture/        # Architecture Decision Records (ADRs) and system diagrams
│   ├── handover/            # Runbooks, deployment guides, and handover documentation
│   └── requirements/        # Approved Project Spec (AR-1223), Change Requests, and MOH/PDPA guidelines
├── infra/                   # Infrastructure as Code (e.g., Terraform for Amazon RDS provisioning)
├── scripts/                 # Utility scripts (e.g., database seeding for legacy patient data migration)
├── src/                     # Source code for the microservices architecture
│   ├── backend/             # Real-time state management and booking logic
│   └── frontend/            # Clinic administrative dashboards and patient UI
├── tests/                   # End-to-end and integration tests 
├── .env.example             # Template for environment variables (NEVER commit actual secrets)
├── .gitignore               # Ignored files and directories
├── Makefile                 # Shortcuts for common developer tasks (e.g., `make build`)
└── README.md                # The entry point for any developer joining the project
