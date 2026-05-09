-- Simple Sample Data for Team Task Manager
-- Password for all users: password123

-- Insert 20 users
INSERT INTO users (name, email, password, role, created_at) VALUES
('John Admin', 'john.admin@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN', NOW()),
('Sarah Manager', 'sarah.manager@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN', NOW()),
('Mike Director', 'mike.director@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN', NOW()),
('Lisa Lead', 'lisa.lead@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN', NOW()),
('Tom Supervisor', 'tom.supervisor@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN', NOW()),
('Alice Developer', 'alice.dev@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Bob Designer', 'bob.design@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Carol Tester', 'carol.test@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('David Engineer', 'david.eng@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Emma Analyst', 'emma.analyst@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Frank Developer', 'frank.dev@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Grace Designer', 'grace.design@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Henry Tester', 'henry.test@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Iris Developer', 'iris.dev@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Jack Engineer', 'jack.eng@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Kate Analyst', 'kate.analyst@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Leo Developer', 'leo.dev@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Mia Designer', 'mia.design@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Noah Tester', 'noah.test@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW()),
('Olivia Developer', 'olivia.dev@company.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'MEMBER', NOW());

-- Insert 50 projects (using subqueries to get user IDs)
INSERT INTO projects (title, description, created_by, created_at) VALUES
('E-Commerce Platform', 'Build a modern e-commerce platform', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '90 days'),
('Payment Gateway Integration', 'Integrate payment systems', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '85 days'),
('Product Catalog System', 'Product management system', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '80 days'),
('Shopping Cart Optimization', 'Improve cart performance', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '75 days'),
('Order Management System', 'Order tracking system', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '70 days'),
('iOS Mobile App', 'Native iOS app', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '65 days'),
('Android Mobile App', 'Native Android app', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '60 days'),
('React Native App', 'Cross-platform mobile app', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '55 days'),
('Mobile App Testing', 'Mobile testing suite', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '50 days'),
('App Store Deployment', 'Deploy to app stores', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '45 days'),
('Company Website Redesign', 'Website redesign', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '40 days'),
('Blog Platform', 'Blogging system', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '35 days'),
('Admin Dashboard', 'Admin control panel', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '30 days'),
('User Authentication System', 'OAuth2 authentication', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '25 days'),
('API Documentation Portal', 'API documentation', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '20 days'),
('Data Analytics Dashboard', 'Analytics and reporting', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '15 days'),
('Business Intelligence Tool', 'BI dashboard', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '10 days'),
('Machine Learning Pipeline', 'ML model training', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '5 days'),
('Data Warehouse Setup', 'Data warehouse', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW()),
('ETL Process Automation', 'Data transformation', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW()),
('CI/CD Pipeline Setup', 'Deployment pipeline', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '90 days'),
('Docker Containerization', 'Containerize services', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '85 days'),
('Kubernetes Deployment', 'K8s cluster setup', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '80 days'),
('Monitoring & Logging', 'ELK stack monitoring', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '75 days'),
('Cloud Migration', 'Migrate to AWS', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '70 days'),
('Security Audit', 'Security assessment', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '65 days'),
('Penetration Testing', 'Security testing', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '60 days'),
('GDPR Compliance', 'GDPR compliance', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '55 days'),
('Encryption Implementation', 'Data encryption', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '50 days'),
('Access Control System', 'RBAC implementation', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '45 days'),
('Chatbot Development', 'AI chatbot', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '40 days'),
('Recommendation Engine', 'ML recommendations', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '35 days'),
('Image Recognition System', 'Computer vision', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '30 days'),
('Natural Language Processing', 'NLP sentiment analysis', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '25 days'),
('Automation Scripts', 'Process automation', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '20 days'),
('Automated Testing Suite', 'Test automation', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '15 days'),
('Performance Testing', 'Load testing', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '10 days'),
('Quality Assurance Process', 'QA workflow', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '5 days'),
('Bug Tracking System', 'Issue tracking', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW()),
('Test Documentation', 'Test cases', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW()),
('Code Refactoring', 'Legacy code modernization', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '90 days'),
('Database Optimization', 'Query optimization', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '85 days'),
('API Rate Limiting', 'API throttling', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '80 days'),
('Notification System', 'Email notifications', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '75 days'),
('Search Functionality', 'Elasticsearch integration', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '70 days'),
('File Upload System', 'Cloud storage', (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW() - INTERVAL '65 days'),
('Reporting Module', 'PDF reports', (SELECT id FROM users WHERE email = 'sarah.manager@company.com'), NOW() - INTERVAL '60 days'),
('Internationalization', 'Multi-language support', (SELECT id FROM users WHERE email = 'mike.director@company.com'), NOW() - INTERVAL '55 days'),
('Accessibility Improvements', 'WCAG compliance', (SELECT id FROM users WHERE email = 'lisa.lead@company.com'), NOW() - INTERVAL '50 days'),
('Documentation Update', 'Technical documentation', (SELECT id FROM users WHERE email = 'tom.supervisor@company.com'), NOW() - INTERVAL '45 days');

-- Insert project members for first 10 projects
INSERT INTO project_members (project_id, user_id) VALUES
((SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'alice.dev@company.com')),
((SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'bob.design@company.com')),
((SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'carol.test@company.com')),
((SELECT MIN(id) + 1 FROM projects), (SELECT id FROM users WHERE email = 'david.eng@company.com')),
((SELECT MIN(id) + 1 FROM projects), (SELECT id FROM users WHERE email = 'emma.analyst@company.com')),
((SELECT MIN(id) + 2 FROM projects), (SELECT id FROM users WHERE email = 'frank.dev@company.com')),
((SELECT MIN(id) + 2 FROM projects), (SELECT id FROM users WHERE email = 'grace.design@company.com')),
((SELECT MIN(id) + 3 FROM projects), (SELECT id FROM users WHERE email = 'henry.test@company.com')),
((SELECT MIN(id) + 4 FROM projects), (SELECT id FROM users WHERE email = 'iris.dev@company.com')),
((SELECT MIN(id) + 5 FROM projects), (SELECT id FROM users WHERE email = 'jack.eng@company.com'));

-- Insert tasks for first project
INSERT INTO tasks (title, description, status, priority, due_date, project_id, assigned_to, created_by, created_at) VALUES
('Setup project repository', 'Initialize Git repo', 'DONE', 'HIGH', NOW() + INTERVAL '5 days', (SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'alice.dev@company.com'), (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW()),
('Design database schema', 'Create ERD', 'IN_PROGRESS', 'HIGH', NOW() + INTERVAL '10 days', (SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'bob.design@company.com'), (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW()),
('Implement authentication', 'JWT auth', 'TODO', 'HIGH', NOW() + INTERVAL '15 days', (SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'carol.test@company.com'), (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW()),
('Create API endpoints', 'REST API', 'TODO', 'MEDIUM', NOW() + INTERVAL '20 days', (SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'alice.dev@company.com'), (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW()),
('Build frontend', 'React UI', 'TODO', 'MEDIUM', NOW() + INTERVAL '25 days', (SELECT MIN(id) FROM projects), (SELECT id FROM users WHERE email = 'bob.design@company.com'), (SELECT id FROM users WHERE email = 'john.admin@company.com'), NOW());

-- Generate 500 more tasks across all projects
INSERT INTO tasks (title, description, status, priority, due_date, project_id, assigned_to, created_by, created_at)
SELECT 
    'Task ' || s.n || ' for project ' || p.id,
    'Description for task ' || s.n,
    CASE (random() * 2)::int WHEN 0 THEN 'TODO' WHEN 1 THEN 'IN_PROGRESS' ELSE 'DONE' END,
    CASE (random() * 2)::int WHEN 0 THEN 'LOW' WHEN 1 THEN 'MEDIUM' ELSE 'HIGH' END,
    NOW() + (random() * 60 || ' days')::interval,
    p.id,
    (SELECT id FROM users WHERE role = 'MEMBER' ORDER BY random() LIMIT 1),
    p.created_by,
    NOW() - (random() * 90 || ' days')::interval
FROM projects p
CROSS JOIN generate_series(1, 10) AS s(n);

-- Summary
-- 20 users, 50 projects, 505 tasks
-- Login: john.admin@company.com / password123
