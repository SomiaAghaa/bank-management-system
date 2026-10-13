#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
)
#set text(
  font: "Liberation Sans",
  size: 11pt,
  lang: "en",
)
#set par(justify: true, leading: 0.65em)

// Plain Heading Formatting
#show heading.where(level: 1): it => block(spacing: 1.5em)[
  #text(size: 14pt, weight: "bold")[#it.body]
]

#show heading.where(level: 2): it => block(spacing: 1.2em)[
  #text(size: 12pt, weight: "bold")[#it.body]
]

#align(center)[
  #text(size: 16pt, weight: "bold")[SECTION 2: PROJECT PLAN] \
  #v(0.5em)
  #text(size: 11pt)[Banking Transaction System -- Requirements & Design Specification]
]

#v(1em)

= 2. Project Plan

== 2.1 Work Breakdown Structure (WBS)
The project scope is deconstructed into six core execution phases aligned with the system modules:

- *Phase 1: Project Setup & Core Domain (AUTH, CUS)*
  - Initialize Git repository, Spring Boot 3.5.x skeleton, Maven configuration, and dev seed data.
  - Validate SQLite connection pooling, WAL mode, and single-writer immediate transaction architecture spike.
  - Build domain model classes and implement registration, login, session handling, and role-based access control (CUSTOMER, ADMIN).
- *Phase 2: Core Banking Operations & Ledger (ACC, TXN)*
  - Build domain model classes for Savings, Checking, and Fixed Deposit account types.
  - Implement deposit, withdrawal, and transfer service methods with atomic balance updates.
  - Enforce transaction limits, account withdrawal rules, dynamic transfer fee calculations, and append-only ledger entries.
- *Phase 3: Reporting, Administration, & Scheduling (STM, ADM, JOB, AUD)*
  - Create account statement views with pagination, date filtering, and CSV export functionality.
  - Build admin dashboard metrics, customer search, account freeze/unfreeze endpoints, and audit logging.
  - Implement scheduled jobs for monthly savings interest accrual and fixed deposit maturity processing, and freeze HTML element IDs.
- *Phase 4: Automated & Security Testing*
  - Develop unit tests for domain rules and MockMvc integration tests for REST controllers.
  - Build Postman API test collection and Selenium 4 WebDriver UI test scripts using stable element IDs.
  - Execute security testing targeting OWASP Top 10 risks (IDOR, privilege escalation, XSS, CSRF).
- *Phase 5: Quality Assurance & Defect Remediation*
  - Conduct static code analysis with SonarLint / SpotBugs and perform OWASP dependency vulnerability checks.
  - Resolve bugs logged in Jira and generate JaCoCo code coverage reports.
- *Phase 6: Documentation, Final Rehearsal & Delivery*
  - Generate OpenAPI/Swagger documentation and finalize Jira test-activity reports.
  - Conduct system demo rehearsals, final code defense, and project presentation.

== 2.2 Timeline & Milestones
The compressed 6-week schedule defines key delivery dates, dependencies, and project milestones:

- *Schedule Overview:*
  - *Week 1:* Requirements signoff, repository setup, database schema, SQLite spike validation, domain model, registration, login, and roles.
  - *Week 2:* Accounts, deposits, withdrawals, transfers, REST API endpoints, UI forms, error handling, dynamic fee calculations, and ledger entries.
  - *Week 3:* Statements, CSV export, admin dashboard, audit log, scheduled jobs, and freeze HTML element IDs for test automation.
  - *Week 4:* Selenium UI automation, Postman API collection, and security test suite execution.
  - *Week 5:* Static testing \(SonarLint/SpotBugs\), bug fixing, full regression testing, and JaCoCo coverage report.
  - *Week 6:* OpenAPI/Swagger documentation, Jira test-activity reports, demo rehearsal, and final project presentation/defense.

- *Key Project Milestones:*
  - *Milestone 1 (Week 1):* Project Foundations & Auth Signoff \(Database schema, seed data, user auth, and SQLite spike verified\).
  - *Milestone 2 (Week 2):* Core Banking MVP \(Complete transaction engine with fee calculation and ledger logging\).
  - *Milestone 3 (Week 3):* Feature Complete & UI Freeze \(Admin tools, statements, frozen DOM IDs for automation\).
  - *Milestone 4 (Week 5):* Code Quality & Test Signoff \(Automated tests passing, static analysis completed, zero critical bugs open\).
  - *Milestone 5 (Week 6):* Final System Delivery & Presentation.

== 2.3 Resource Plan
The required technology stack, developer tools, hardware, and runtime environments are detailed below:

#table(
  columns: (1.5fr, 4fr),
  align: (left, left),
  stroke: 0.5pt + luma(100),
  [*Resource Category*], [*Tools & Environment Details*],
  [Backend Framework], [Java 17 or higher, Spring Boot 3.5.x \(Web, Data JPA, Security, Validation\), Maven],
  [Database & Storage],
  [SQLite \(embedded single-file database\), sqlite-jdbc, Hibernate SQLite dialect, DB Browser for SQLite],

  [Frontend & UI], [Thymeleaf view templates, plain CSS \(or Bootstrap framework\)],
  [Testing Tools], [JUnit 5, Mockito, Spring Boot Test / MockMvc, Selenium 4 \(Page Object Model\), Postman, JaCoCo],
  [Quality & Process],
  [Git + GitHub \(pull requests\), Jira \(board, bug tracking\), SonarLint / SpotBugs, OWASP Dependency-Check],

  [Hardware / Host], [Standard developer workstations running JDK 17+ and local embedded database environment],
)
