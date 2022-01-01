FROM bitnami/git as git
WORKDIR /app
RUN git clone --recursive https://github.com/BlueMap-Minecraft/BlueMap.git bluemap

FROM openjdk:17 as java
WORKDIR /app
COPY --from=git /app/bluemap /app
RUN ./gradlew clean build
COPY ./start.sh /app

CMD ["/app/start.sh"]