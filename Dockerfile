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

EXPOSE 3000

# Start app
CMD ["npm", "start"]
