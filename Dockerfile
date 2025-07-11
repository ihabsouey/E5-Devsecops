FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --no-audit --no-fund --prefer-offline
COPY . .
RUN npm run build
EXPOSE 4200
CMD ["npm", "start"]