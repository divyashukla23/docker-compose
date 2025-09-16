FROM python:3.9.23-slim-trixie
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 80
CMD [ "gunicorn", "app.py", 5000 ]