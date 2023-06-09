FROM python:3.9-slim-buster

WORKDIR /workspace

ADD ./ /workspace

RUN pip3 install --no-cache-dir --upgrade pip  && \
        pip3 install --no-cache-dir -r /workspace/requirements.txt

EXPOSE 8899

CMD ["python3", "MainServer.py"]
