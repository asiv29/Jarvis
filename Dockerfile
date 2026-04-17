FROM node:22-slim

RUN npm install -g openclaw@latest

WORKDIR /home/node/.openclaw

EXPOSE 18789

CMD ["openclaw", "start"]
