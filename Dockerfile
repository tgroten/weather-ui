FROM node:8.1-alpine

COPY . /app
WORKDIR /app

RUN chmod +x run.sh && sleep 1 && \
    ./run.sh

CMD ["serve", "-s", "build"]
