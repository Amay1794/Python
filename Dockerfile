FROM python:3.8-alpine
ADD ./app.py flask.py
RUN echo "flask">requirements.txt
RUN pip install -r requirements.txt
CMD ["python", "flask.py"]
