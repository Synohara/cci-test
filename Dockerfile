FROM python:3.7
LABEL authors="mk-shinohara@kddi.com"

# SageMaker Python SDKとpandasをインストール
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .