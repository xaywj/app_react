# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install --production

# Copy the entire project to the container
COPY . .

# Set the command to start the React app
CMD ["npm", "start"]

# Tell Docker about the port we'll run on
EXPOSE 3005