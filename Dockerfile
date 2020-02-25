FROM tiangolo/meinheld-gunicorn-flask:python3.7

COPY /dist/flaskr-1.0.0-py2.py3-none-any.whl /app

RUN pip install /app/flaskr-1.0.0-py2.py3-none-any.whl

ENV FLASK_APP=flaskr

RUN flask init-db

ENV APP_MODULE flaskr:create_app()