# Use an official lightweight Node.js image as a parent image
FROM node:14-alpine

# Install `http-server` to serve static content
RUN npm install -g http-server

# Set the working directory
WORKDIR /usr/src/app

# Copy the web application files to the Docker image
COPY . .

# Inform Docker that the container listens on port 8080 at runtime
EXPOSE 8080

# Command to run when the container starts
CMD [ "http-server", "-p 8080" ]
