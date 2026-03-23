FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM caddy:2-alpine
COPY --from=builder /app/dist /srv
EXPOSE 80
CMD sh -c "caddy file-server --root /srv --listen :${PORT:-80}"
