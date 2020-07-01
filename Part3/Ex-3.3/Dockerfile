# Ex-3.3 builder dockerfile

FROM alpine:latest

RUN apk add git docker && \
    mkdir -p '/app/$SRC'

WORKDIR /app

COPY ./build.sh .

CMD ["sh","build.sh"]
