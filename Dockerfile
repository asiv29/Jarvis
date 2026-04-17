FROM node:24-slim

RUN apt-get update && apt-get install -y git curl --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN npm install -g openclaw@latest

WORKDIR /home/node/.openclaw

EXPOSE 18789

CMD ["openclaw", "start"]
