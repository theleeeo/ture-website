# Stage 1: Build the SvelteKit application
# Use a Node.js base image
FROM node:21 as build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the SvelteKit application
RUN npm run build

# Stage 2: Serve the application
# Use a smaller, production-ready base image
FROM node:alpine

# Set the working directory in the container
WORKDIR /app

# Copy built assets from the build stage
COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./

# Install production dependencies
RUN npm ci --omit dev

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "build/index.js"]
