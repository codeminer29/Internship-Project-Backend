# Use OpenJDK 17 as base image
FROM eclipse-temurin:17-jdk

# Set the working directory in the container
WORKDIR /app

# Copy all files from your project to the container
COPY . /app

# Give executable permission to Maven wrapper
RUN chmod +x mvnw

# Build the project without running tests
RUN ./mvnw clean package -DskipTests

# Run the built JAR file
CMD ["java", "-jar", "target/studentmanagement-0.0.1-SNAPSHOT.jar"]
