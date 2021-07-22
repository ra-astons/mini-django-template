FROM python:3.8-buster

WORKDIR /srv

RUN pip install --upgrade pip && \
    pip install pip-tools

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONPATH "${PYTHONPATH}:/srv"

COPY app/requirements ./requirements

RUN pip-compile requirements/dev.in && \
    pip install -r requirements/dev.txt

COPY docker/backend/entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
