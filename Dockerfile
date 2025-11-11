# Use the official n8n image
FROM n8nio/n8n:latest

WORKDIR /home/node

ENV N8N_PORT=${PORT}

ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV NODE_ENV=production
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# This line makes all the difference:
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://eloquent-optimism.up.railway.app/

EXPOSE 5678

ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
