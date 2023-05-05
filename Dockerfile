FROM nginx:1.23.4-alpine
COPY ./prototype /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN if [ ! -d "/usr/share/nginx/html/fontawesome" ]; then \
    wget https://use.fontawesome.com/releases/v6.4.0/fontawesome-free-6.4.0-web.zip && \
    unzip fontawesome-free-6.4.0-web.zip && \
    mv fontawesome-free-6.4.0-web /usr/share/nginx/html/fontawesome ; \
    fi
EXPOSE 80