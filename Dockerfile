FROM python:3.9.6-alpine3.13 as dev

WORKDIR /work

FROM dev as runtime

WORKDIR /app
COPY /src/requirements.txt /app/
RUN pip install -r /app/requirements.txt 

COPY /src/app.py /app/app.py

ENV FLASK_APP=app.py 
ENV PORT=3000

ENTRYPOINT [ "flask", "run", "-h", "0.0.0", "-p", "3000" ]