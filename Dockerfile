FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY autonew.py .
COPY bot_data.json .

CMD ["python", "bot.py"]
