FROM bitnami/git as git
WORKDIR /app
RUN git clone --recursive https://github.com/BlueMap-Minecraft/BlueMap.git bluemap

FROM openjdk:17 as java
WORKDIR /app
COPY --from=git /app/bluemap /app
COPY ./BlueMap-1.7.2-cli.jar /app/bluemap/build/release/bluemap.jar
# RUN npx browserslist@latest --update-db
# RUN ./gradlew clean build
COPY ./start.sh /app
COPY ./core.conf /app

CMD ["/app/start.sh"]