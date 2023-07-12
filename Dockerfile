FROM registry.premom.tech/k8s/nodejs:v14

WORKDIR /app

COPY . /app

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
