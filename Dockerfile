FROM node:22.12.0

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

ENV MODEL_URL = "https://storage.googleapis.com/bucketsubmission-1/model-in-prod/model.json"

CMD [ "npm", "run", "start"]
