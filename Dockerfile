FROM python:3.8-slim-buster
WORKDIR .
COPY . .
RUN apt-get update
RUN apt-get install -y libssl-dev aria2 ffmpeg curl unzip
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
CMD ["python3", "main.py"]
