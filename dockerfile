# Gunakan image resmi Node.js sebagai base image
FROM node:14

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh kode aplikasi ke dalam container
COPY . .

