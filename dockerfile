FROM node:18-alpine

# تثبيت n8n بشكل يدوي
RUN apk add --no-cache \
    bash \
    curl \
    openssl \
    python3 \
    py3-pip \
    && npm install -g n8n

# تحديد مجلد العمل
WORKDIR /data

# تعيين البورت
EXPOSE 5678

# الأمر الذي يُشغّل n8n
CMD ["n8n"]
