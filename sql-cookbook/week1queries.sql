#POSTGRESQL 

-- Query 1: All open tickets
SELECT ticket_id, server_name, category, priority
FROM tickets
WHERE status = 'Open';

-- Query 2: Count tickets by priority
SELECT priority, COUNT(*) AS ticket_count
FROM tickets
GROUP BY priority
ORDER BY priority;

-- Query 3: All P1 tickets
SELECT ticket_id, server_name, assigned_to, status, created_at
FROM tickets
WHERE priority = 'P1'
ORDER BY created_at DESC;

-- Query 4: Tickets per server
SELECT server_name, COUNT(*) AS total_tickets
FROM tickets
GROUP BY server_name
ORDER BY total_tickets DESC;

-- Query 5: Resolution time in hours
SELECT 
    ticket_id,
    server_name,
    priority,
    ROUND(EXTRACT(EPOCH FROM (resolved_at - created_at)) / 3600, 2) AS hours_to_resolve
FROM tickets
WHERE resolved_at IS NOT NULL
ORDER BY hours_to_resolve DESC;




--Main Query create table

CREATE TABLE tickets (
    ticket_id     SERIAL PRIMARY KEY,
    server_name   VARCHAR(50),
    category      VARCHAR(50),
    priority      VARCHAR(20),
    status        VARCHAR(20),
    created_at    TIMESTAMP,
    resolved_at   TIMESTAMP,
    assigned_to   VARCHAR(50)
);

INSERT INTO tickets VALUES
(1, 'SERVER01', 'Hardware',  'P1', 'Resolved', '2026-03-01 08:00', '2026-03-01 09:30', 'Alice'),
(2, 'SERVER02', 'Network',   'P2', 'Resolved', '2026-03-01 09:00', '2026-03-01 11:00', 'Bob'),
(3, 'SERVER01', 'Software',  'P3', 'Open',     '2026-03-02 10:00', NULL,               'Alice'),
(4, 'SERVER03', 'Hardware',  'P1', 'Resolved', '2026-03-02 11:00', '2026-03-02 12:00', 'Carol'),
(5, 'SERVER02', 'Network',   'P2', 'Open',     '2026-03-03 08:30', NULL,               'Bob'),
(6, 'SERVER03', 'Software',  'P3', 'Resolved', '2026-03-03 09:00', '2026-03-03 14:00', 'Alice'),
(7, 'SERVER01', 'Hardware',  'P1', 'Open',     '2026-03-04 07:00', NULL,               'Carol'),
(8, 'SERVER04', 'Network',   'P2', 'Resolved', '2026-03-04 10:00', '2026-03-04 11:30', 'Bob'),
(9, 'SERVER04', 'Software',  'P3', 'Open',     '2026-03-05 09:00', NULL,               'Alice'),
(10,'SERVER03', 'Hardware',  'P1', 'Resolved', '2026-03-05 08:00', '2026-03-05 08:45', 'Carol');

