FROM openjdk:17 as java
RUN mkdir /app
WORKDIR /app
COPY ./start.sh /app
COPY ./core.conf /app

CMD ["/app/start.sh"]