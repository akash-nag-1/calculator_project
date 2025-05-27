# Use OpenJDK base image
FROM openjdk:17-slim

# Set working directory
WORKDIR /app

# Copy Java source code into container
COPY src/Calculator.java .

# Compile the Java code
RUN javac Calculator.java

# Set default command
ENTRYPOINT ["java", "Calculator"]
