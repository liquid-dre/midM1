# Selected image: 3.12-slim - (it is stable and comes with standard libraries)
FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8080
# Auto reload of app-server
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
