FROM python:3.8-alpine
RUN python3 -m venv ./venv
ADD ./app.py flask.py
RUN source ./venv/bin/activate
RUN echo "flask">requiremnts.txt
RUN pip install -r requirements.txt
CMD ["python", "flask.py"]
