--This file contains the base table structures, primary keys, and foreign key relationships for ticket investigation database

-- users table --
CREATE TABLE users (
    user_id   SERIAL PRIMARY KEY,
    name   VARCHAR(100) NOT NULL,
    department   VARCHAR(50)
);

-- agents table --
CREATE TABLE agents (
    agent_id   SERIAL PRIMARY KEY,
    name   VARCHAR(100) NOT NULL,
    team   VARCHAR(50)
);

-- categories table --
CREATE TABLE categories (
    category_id   SERIAL PRIMARY KEY,
    type   VARCHAR(50) NOT NULL,
    description   VARCHAR(500)
);

-- tickets table --
CREATE TABLE tickets (
    ticket_id   SERIAL PRIMARY KEY,
    ticket_subject   VARCHAR(200) NOT NULL,
    ticket_description   VARCHAR(2000),
    status   VARCHAR(20),
    priority   VARCHAR(10),
    created_date   DATE,
    resolved_date   DATE,
    user_id   INT REFERENCES users(user_id),
    agent_id   INT REFERENCES agents(agent_id),
    category_id   INT REFERENCES categories(category_id)
);
