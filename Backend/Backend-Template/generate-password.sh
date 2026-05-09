#!/bin/bash
# This script helps generate a BCrypt hash for testing
# You can run this in your backend to get the correct hash

echo "To generate a BCrypt hash for 'password123', run this in your Spring Boot app:"
echo ""
echo "import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;"
echo "BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();"
echo "String hash = encoder.encode(\"password123\");"
echo "System.out.println(hash);"
