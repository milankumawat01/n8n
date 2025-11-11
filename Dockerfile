# Use the official n8n image
FROM n8nio/n8n:latest

# Set the working directory
WORKDIR /data

# Expose n8n default port
EXPOSE 5678

# Environment variables (you can override these in Railway)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678
ENV NODE_ENV=production

# Start n8n
CMD ["n8n", "start"]
