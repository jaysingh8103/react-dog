# Use Node.js 16 or 18, which are the LTS (Long-Term Support) versions
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose the port your app will run on
EXPOSE 8000

# Command to start your app
CMD ["npm", "run", "dev"]
