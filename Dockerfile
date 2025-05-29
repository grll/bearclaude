FROM node:slim

RUN npm install -g @anthropic-ai/claude-code

WORKDIR /workspace

CMD ["claude"]