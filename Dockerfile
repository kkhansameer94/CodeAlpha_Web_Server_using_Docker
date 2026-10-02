FROM nginx:alpine

LABEL maintainer="Sameer Khan <kkhansameer94>"
LABEL project="CodeAlpha DevOps Task 4 - Web Server using Docker"

COPY nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -qO- http://localhost/health || exit 1

CMD ["nginx", "-g", "daemon off;"]
