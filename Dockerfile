FROM intdocker.cargosmart.com/os/node:8.3.0

RUN mkdir -p /app/consul-ui

WORKDIR /app/consul-ui

COPY . /app/consul-ui

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && \
	cnpm install

EXPOSE 8088 
