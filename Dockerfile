FROM python:3.7.2-slim

COPY . /app
WORKDIR /app

RUN pip install numpy && \
    pip install pandas
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

