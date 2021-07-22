djangotemplate
=======

Minimal Django template ready for Docker production.

Built from [Liip's Django template](https://github.com/liip/django-template).

## Dev setup

1. Copy `.env.dev.sample` to `.env.dev` and adapt if required.

2. Fire up `docker-compose up -d`

## Production setup

1. Copy `.env.prod.sample` to `.env.prod` and `.env.prod.db.sample` to `.env.prod.db` and adapt.

2. Build images `docker-compose build`
