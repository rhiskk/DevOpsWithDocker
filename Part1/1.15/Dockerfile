FROM python:3

EXPOSE 5000

WORKDIR /choreTracker

COPY ChoreTracker ./

RUN python3 -m venv venv

RUN pip install -r requirements.txt

CMD python3 run.py
