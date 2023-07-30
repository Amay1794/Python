FROM python:3.8-alpine
RUN python3 -m venv ./venv
ADD ./app.py flask.py
RUN source ./venv/bin/activate
RUN echo "flask">requirements.txt
RUN pip install -r requiremets.txt
CMD ["python, flask.py"]


