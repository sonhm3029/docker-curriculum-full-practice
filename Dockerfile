FROM python:3.10-slim

WORKDIR /code

COPY ./requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

CMD ["flask", "--app", "src/app", "run", "-h", "0.0.0.0", "-p", "8000", "--debug"]