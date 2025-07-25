# Base image
FROM node:24

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source files
COPY . .

# Build TypeScript
RUN npm run build

# Start app
CMD ["npm", "start"]
