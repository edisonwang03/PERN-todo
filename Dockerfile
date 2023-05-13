# Use the official Node.js 16 image as the parent image
FROM node:16

# Set the working directory in the container
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

# Install pm2
RUN npm install pm2 -g

# Start the server and client using pm2
CMD ["sh", "-c", "cd server && pm2 start index.js --name server --no-daemon && cd ../client && pm2 start npm -- start --name client --no-daemon && pm2 logs"]