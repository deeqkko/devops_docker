#Docerfile for Exercise 1.7
FROM ubuntu:16.04

WORKDIR /params
COPY geturl.sh .

RUN chmod +x ./geturl.sh
RUN apt-get update && apt-get install -y curl

CMD ["./geturl.sh"]
