FROM python:3.7.2-slim
WORKDIR /app
COPY . /app


RUN pip install numpy && \
    pip install pandas
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

