# نستخدم صورة Node.js خفيفة مبنية على Alpine Linux
FROM node:20-alpine

# تثبيت بعض الأدوات الضرورية
RUN apk add --no-cache bash curl openssl python3 py3-pip

# تثبيت n8n آخر نسخة مستقرة
RUN npm install -g n8n

# تحديد مجلد العمل داخل الحاوية
WORKDIR /data

# تعيين المنفذ الذي سيعمل عليه n8n
EXPOSE 5678

# الأمر الأساسي لتشغيل n8n
CMD ["n8n"]
