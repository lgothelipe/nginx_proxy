FROM nginx:1.19.5-alpine

RUN rm /etc/nginx/conf.d/default.conf
RUN mkdir -p /apps/test && echo "Hello World!" > /apps/test/index.html
COPY nginx/* /etc/nginx/templates/

#fire up nginx
EXPOSE 80
EXPOSE 443
CMD ["nginx","-g","daemon off;"]