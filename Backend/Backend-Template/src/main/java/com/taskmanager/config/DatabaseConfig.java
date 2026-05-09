package com.taskmanager.config;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;
import java.net.URI;
import java.net.URISyntaxException;

@Configuration
public class DatabaseConfig {

    @Bean
    @Primary
    public DataSource dataSource() {
        String databaseUrl = System.getenv("DATABASE_URL");
        
        if (databaseUrl != null && !databaseUrl.isEmpty()) {
            // Render provides DATABASE_URL in format: postgresql://user:password@host:port/database
            // We need to convert it to JDBC format: jdbc:postgresql://host:port/database
            try {
                System.out.println("DATABASE_URL found: " + databaseUrl.replaceAll(":[^:@]+@", ":****@")); // Log with masked password
                
                URI dbUri = new URI(databaseUrl);
                String username = dbUri.getUserInfo().split(":")[0];
                String password = dbUri.getUserInfo().split(":")[1];
                
                // Build JDBC URL
                String host = dbUri.getHost();
                int port = dbUri.getPort() > 0 ? dbUri.getPort() : 5432; // Default PostgreSQL port
                String path = dbUri.getPath();
                
                String jdbcUrl = "jdbc:postgresql://" + host + ":" + port + path;
                
                System.out.println("Converted JDBC URL: " + jdbcUrl);
                System.out.println("Username: " + username);

                return DataSourceBuilder
                        .create()
                        .url(jdbcUrl)
                        .username(username)
                        .password(password)
                        .driverClassName("org.postgresql.Driver")
                        .build();
            } catch (URISyntaxException e) {
                System.err.println("Failed to parse DATABASE_URL: " + e.getMessage());
                throw new RuntimeException("Invalid DATABASE_URL format", e);
            } catch (Exception e) {
                System.err.println("Error creating DataSource from DATABASE_URL: " + e.getMessage());
                throw new RuntimeException("Failed to create DataSource", e);
            }
        }
        
        // Fallback to Spring Boot's default DataSource configuration
        System.out.println("DATABASE_URL not found, using application.properties configuration");
        return DataSourceBuilder
                .create()
                .url(System.getenv().getOrDefault("SPRING_DATASOURCE_URL", "jdbc:postgresql://localhost:5432/taskmanager"))
                .username(System.getenv().getOrDefault("SPRING_DATASOURCE_USERNAME", "postgres"))
                .password(System.getenv().getOrDefault("SPRING_DATASOURCE_PASSWORD", "postgres"))
                .driverClassName("org.postgresql.Driver")
                .build();
    }
}
