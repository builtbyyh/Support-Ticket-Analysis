
-- 1. All tickets grouped by status (resolved, in progress, open) 
SELECT status,
	Count(*) AS tickets_open 
FROM tickets
GROUP BY status;

-- 2. All tickets created grouped by departments
SELECT users.department,
       COUNT(tickets.ticket_id) AS tickets_raised
FROM tickets 
JOIN users ON tickets.user_id = users.user_id
GROUP BY users.department
ORDER BY tickets_raised DESC;

-- 3. Most common ticket category grouped
SELECT categories.type, 
	COUNT(ticket_id) AS total
FROM tickets
JOIN categories ON tickets.category_id = categories.category_id
GROUP BY categories.type;

-- 4. Ticket priority for total tickets grouped
SELECT priority, 
	COUNT(ticket_id) AS total
FROM tickets
GROUP BY priority;

-- 5. Total tickets assigned to each agent
SELECT agents.name,
	COUNT(ticket_id) AS total
FROM tickets
JOIN agents ON tickets.agent_id = agents.agent_id
GROUP BY name;

-- 6. Tickets opened by month
SELECT
	TO_CHAR(created_date, 'YYYY-MM') AS month,
	COUNT(*) AS total_tickets_created
FROM tickets
GROUP BY TO_CHAR(created_date, 'YYYY-MM')
ORDER BY month ASC




-- Full ticket detail report joining all 4 tables available in views.sql 
