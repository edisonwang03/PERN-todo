# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the server package.json and package-lock.json files to the container
COPY server/package*.json ./server/

# Install dependencies for the server
RUN cd server && npm install

# Copy the client package.json and package-lock.json files to the container
COPY client/package*.json ./client/

# Install dependencies for the client
RUN cd client && npm install

# Copy the server and client source code to the container
COPY server ./server/
COPY client ./client/

# Expose the ports used by the server and client
EXPOSE 5000
EXPOSE 3000

# Start the server and client
CMD ["sh", "-c", "cd server && node index.js & cd client && npm start"]
