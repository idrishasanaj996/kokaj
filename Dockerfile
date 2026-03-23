FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM node:22-alpine AS runner
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY package*.json ./
COPY astro.config.mjs ./
EXPOSE 3000
CMD ["npx", "astro", "preview", "--host", "0.0.0.0", "--port", "3000"]
