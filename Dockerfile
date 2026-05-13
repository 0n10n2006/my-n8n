FROM docker.n8n.io/n8nio/n8n

USER root

RUN apk add --no-cache curl

USER node

EXPOSE 5678

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

CMD ["n8n", "start"]
