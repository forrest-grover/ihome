FROM node:22-alpine

RUN apk add --no-cache git curl bash

RUN npm install -g @anthropic-ai/claude-code@latest

RUN mkdir -p /workspace && chown node:node /workspace

RUN ln -s /home/node/.claude/config.json /home/node/.claude.json

USER node
WORKDIR /workspace

ENTRYPOINT ["claude", "--dangerously-skip-permissions"]
