
-- View of all support requests that have been opened sorted by most recent tickets first
SELECT 
 tickets.ticket_id AS "id",
 tickets.created_date AS "opened",
 users.name AS "user",
 categories.type AS "category",
 tickets.priority,
 tickets.ticket_description,
 tickets.status,
 users.department,
 agents.name AS "assigned_to",
 tickets.resolved_date AS "closed"
FROM tickets
JOIN agents ON tickets.agent_id = agents.agent_id
JOIN users ON tickets.user_id = users.user_id
JOIN categories ON tickets.category_id = categories.category_id
ORDER BY closed DESC;


-- High Priority 'Open' and 'In Progress' tickets sorted by most recent tickets first 
SELECT 
 tickets.ticket_id AS "id",
 tickets.created_date AS "opened",
 users.name AS "user",
 categories.type AS "category",
 tickets.priority,
 tickets.ticket_description,
 tickets.status,
 users.department,
 agents.name AS "assigned_to",
 tickets.resolved_date AS "closed"
 FROM tickets
JOIN agents ON tickets.agent_id = agents.agent_id
JOIN users ON tickets.user_id = users.user_id
JOIN categories ON tickets.category_id = categories.category_id
WHERE (tickets.priority = 'High')
AND tickets.status IN ('Open', 'In Progress')
ORDER BY opened DESC;


-- ALL closed tickets sorted by closed data 
SELECT 
 tickets.ticket_id AS "id",
 tickets.created_date AS "opened",
 users.name AS "user",
 categories.type AS "category",
 tickets.priority,
 tickets.ticket_description,
 tickets.status,
 users.department,
 agents.name AS "assigned_to",
 tickets.resolved_date AS "closed"
 FROM tickets
JOIN agents ON tickets.agent_id = agents.agent_id
JOIN users ON tickets.user_id = users.user_id
JOIN categories ON tickets.category_id = categories.category_id
WHERE tickets.status = 'Resolved'
ORDER BY closed DESC
