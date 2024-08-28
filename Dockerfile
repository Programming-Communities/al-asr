# Use the Node.js 20.17.0 image as the base
FROM node:20.17.0

# Set the working directory in the container
WORKDIR /Al-Asr

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "run", "dev"]
