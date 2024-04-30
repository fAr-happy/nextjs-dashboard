# Use an official Node.js runtime as a parent image
FROM node:20.12.2

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run your app using CMD which defines your runtime
# Here we use the npm start command to start the Next.js application
CMD ["npm", "start"]