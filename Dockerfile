FROM node:22

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

# Run migrations before starting the app
CMD npm run db:generate && npm run db:migrate && npm run dev
