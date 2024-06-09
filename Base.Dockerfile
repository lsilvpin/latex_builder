FROM ubuntu:24.04

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y texlive-full
RUN apt update -y
RUN apt upgrade -y

WORKDIR /app
ADD . /app/

# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]