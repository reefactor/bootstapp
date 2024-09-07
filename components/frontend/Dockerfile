FROM docker.autofaq.ai/nginx:1.25.3-alpine

# add runtime dependencies
RUN apk add --no-cache nodejs-current npm && \
    apk del libgcrypt libgcrypt libxml2 nginx-module-xslt nginx-mod-http-xslt-filter && \
    rm /etc/nginx/conf.d/* && \
    addgroup --system --gid 1001 nodejs

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf


# demo stub
ADD index.html /usr/share/nginx/html

# TODO
# RUN npm build
# ADD build /usr/share/nginx/html
