FROM python:3.10

RUN pip install --upgrade pip && pip install notebook

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]