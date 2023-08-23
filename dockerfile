FROM node:14-alpine

# Mengatur direktori kerja di dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menginstal dependensi yang dibutuhkan
RUN npm install

# Menyalin seluruh konten aplikasi ke dalam container
COPY . .

EXPOSE 3000
#Jalankan aplikasi Node.js
CMD ["node", "app.js"]

