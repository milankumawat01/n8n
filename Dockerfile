# Use the official n8n Docker image from Docker Hub
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy local files (optional)
# COPY . .

# Fix permissions warning
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose default n8n port
EXPOSE 5678

# Set default environment vars (override these in Railway)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678
ENV NODE_ENV=production

# Start n8n
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
