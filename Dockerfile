
FROM mcr.microsoft.com/playwright:v1.41.2-jammy

WORKDIR /jenkins_pipeline

COPY package*.json ./

RUN npm install 

COPY . .

CMD [ "npm", "run", "test"] 