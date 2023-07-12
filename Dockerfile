FROM registry.premom.tech/k8s/node-build:v8

WORKDIR /app

COPY packahe.json /app/

RUN npm install

COPY . /app

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
