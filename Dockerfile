FROM registry.premom.tech/k8s/node-build:v8

WORKDIR /app

COPY package.json /app/

RUN npm config set registry https://npmtools.premom.tech

RUN export https_proxy=http://10.0.9.101:7890 http_proxy=http://10.0.9.101:7890 all_proxy=socks5://10.0.9.101:7891

RUN npm install

COPY . /app

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
