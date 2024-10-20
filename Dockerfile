FROM alpine:3.20
RUN mkdir /app
WORKDIR /app
RUN wget -O /app/yt-dlp  https://github.com/yt-dlp/yt-dlp/releases/download/2024.10.07/yt-dlp_linux


RUN chmod 777 /app/yt-dlp
ENTRYPOINT [ "/app/yt-dlp" ]