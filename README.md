# Support-Ticket-Analysis
In this project I created a relational database using PostgreSQL to model a SaaS application support helpdesk system, I designed and analysed the database to demonstrate my SQL skills.

## Project Overview
This project simulates a real-world SaaS support helpdesk database containing over 170 support tickets raised by 100 users across 6 departments. These tickets are handled by a team of 4 agents, tickets can be raised in 8 issue categories. The data I used was designed to reflect the types of issues encountered in a SaaS support environment such as login failures, licensing problems, integration errors and user management requests.

## Tools used
<img src="https://images.ctfassets.net/6yom6slo28h2/fJUJrqHAzWweaJZvNXgWS/446631a4e2f0cc825292c982c12e173a/postgresql.jpg?w=150&h=300&fl=progressive&q=100&fm=jpg" alt="Image of PostgreSQL logo" width="150" height="100"> <img src="https://forums.visual-paradigm.com/uploads/default/original/2X/6/6d10753eda994cb828d6d182304d2c9929ae85c1.png" alt="Image of Visual Paradigm logo" width="150" height="100">

## Database structure
The database consists of 4 linked tables:

- **tickets** — Main table storing all support requests with status, priority and more
- **users** — The table including all the employees who raise tickets and are each classified by their department
- **agents** — The support team members assigned to resolve tickets
- **categories** — The table used to classify each of ticket categories specific to SaaS support

#### Below you will find the Entity Relationship Diagram (ERD):

#### Entity relationship diagram
<img src="helpdesk_erd.PNG" width="600" height="600">

## How to run this project

1. Install PostgreSQL and open pgAdmin
2. Create a new database called `support_db` on your PostgreSQL 17 server
3. Select the `support_db` database and then open the Query Tool and run `schema/create_tables.sql`
4. After confirming the tables exist, run `data/insert_data.sql` to populate the tables
5. To analyse the data, run `queries/analysis.sql`
6. To view the data in a dashboard format run run `queries/views.sql`
