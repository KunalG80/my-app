#use the latest lts version of node
FROM node:18-alpine

# set working directory inside the container
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# copy the rest of the application files
COPY . .

# Expose the port the app runs in
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]