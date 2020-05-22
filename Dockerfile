FROM node:lts-slim
LABEL systems.layer27.vendor="Layer27, LLC" \
      systems.layer27.author="Layer27 DevOps <devops@layer27.com>" \
      systems.layer27.name="k8s-mongo-sidecar" \
      systems.layer27.description="Mongodb Sidecar" \
      systems.layer27.version="0.2.1" \
      systems.layer27.url="https://layer27.com"

ENV NODE_ENV=production

WORKDIR /opt/k8s-mongo-sidecar

COPY package.json /opt/k8s-mongo-sidecar/

RUN npm install

COPY ./src /opt/k8s-mongo-sidecar/src

CMD ["npm", "start"]
