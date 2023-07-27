# Sử dụng image PostgreSQL chính thức từ Docker Hub
FROM postgres:latest

# Copy file backup dữ liệu từ Macbook vào container
COPY backup_test_2.sql /docker-entrypoint-initdb.d/

# Thiết lập biến môi trường cho PostgreSQL
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD Bapbap@1412
ENV POSTGRES_DB maps