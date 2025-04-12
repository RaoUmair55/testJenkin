FROM nginx:alpine
COPY . /usr/share/nginx/html
bat 'docker build -t myimage .'
EXPOSE 80
