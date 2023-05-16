# syntax=docker/dockerfile:1

FROM python:3.9-alpine
LABEL maintainer="Giovanni Tommasini <tommasini.giovanni@gmail.com>"
ENV REFRESHED_AT 2023-05-16

WORKDIR /scripts
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY scripts/ /scripts

CMD ["sh", "-c", "python $FILE_TO_RUN"]