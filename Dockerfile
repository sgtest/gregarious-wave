# Use node latest
FROM node:latest@sha256:3b8ec378cc16890c54a5029fff7d552e757ec3fc63528a8a52b5754ed70867f9

# Copy source code
COPY . /app

# Change working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Expose API port to the outside
EXPOSE 80

# Launch application
CMD ["npm","start"]
