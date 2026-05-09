-- Quick test to check if users exist and can login
-- Run these queries one by one to debug

-- 1. Check if any users exist
SELECT COUNT(*) as user_count FROM users;

-- 2. Check if john.admin exists
SELECT id, name, email, role, created_at FROM users WHERE email = 'john.admin@company.com';

-- 3. Check the password hash (should start with $2a$)
SELECT email, password FROM users WHERE email = 'john.admin@company.com';

-- 4. Check all users
SELECT id, name, email, role FROM users ORDER BY id;

-- 5. If no users exist, insert a test admin manually
-- Uncomment and run this if needed:
-- INSERT INTO users (name, email, password, role, created_at) VALUES
-- ('Test Admin', 'test@admin.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN', NOW());
