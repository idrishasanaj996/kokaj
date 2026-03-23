FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM caddy:2-alpine
COPY --from=builder /app/dist /srv
EXPOSE 3000
CMD ["caddy", "file-server", "--root", "/srv", "--listen", ":3000"]
