FROM python:3.6.12-alpine3.12

ARG time

WORKDIR /test-app
COPY setup.py /test-app
COPY requirements.txt /test-app
COPY app /test-app/app

RUN pip install flask
RUN python3.6 setup.py bdist_wheel
RUN pip install dist/epam_app-1.0.3-py3-none-any.whl

EXPOSE 5000/tcp

CMD epam-app
