-- Fix passwords for all users
-- This BCrypt hash is for password: password123
-- Generated with BCryptPasswordEncoder strength 10

UPDATE users 
SET password = '$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG'
WHERE email LIKE '%@company.com';

-- Verify the update
SELECT id, name, email, role, 
       CASE 
         WHEN password = '$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HZWzG3YB1tlRy.fqvM/BG' 
         THEN 'Password Updated ✓' 
         ELSE 'Old Password' 
       END as status
FROM users
ORDER BY id;

-- Now you can login with:
-- Email: john.admin@company.com
-- Password: password123
