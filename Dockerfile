# Use the official Node.js 16 image as the parent image
FROM node:16

# Set the working directory to /app
WORKDIR /app

# Copy the package.json files for both the server and client
COPY server/package*.json ./server/
COPY client/package*.json ./client/

# Install the dependencies for both the server and client
RUN cd server && npm install && cd ../client && npm install

# Copy the remaining files to the working directory
COPY . .

# Expose port 5000 for the server and 3000 for the client
EXPOSE 5000
EXPOSE 3000

# Start the server and client using separate terminals
CMD ["sh", "-c", "cd server && npm start & cd ../client && npm start & wait"]