# Use official Node.js base image
FROM node:16

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
