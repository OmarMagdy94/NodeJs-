# Use an official Node.js runtime as a base image
FROM node:22-alpine3.18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (adjust as needed)
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]
