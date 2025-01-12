FROM python:3.12.7-slim-buster
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cach-dir -r requirements.txt
COPY . .
CMD ["ginicorn" , "app:app"]