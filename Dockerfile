# Set the base image to use
FROM node:16

# Create and set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies for both the server and client
RUN npm install && cd client && npm install

# Copy the remaining files to the working directory
COPY . .

# Build the client
RUN cd client && npm run build

# Expose the port your server will run on
EXPOSE 8080

# Start both the server and the client
CMD ["npm", "run", "start"]