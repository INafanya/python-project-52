build:
	./build.sh

install:
	uv sync

migrate:
	uv run python manage.py migrate

render-start:
	uv run gunicorn task_manager.wsgi

dev:
	uv run manage.py runserver

lint:
	uv run ruff check

test:
	uv run pytest -vv --reuse-db

compilemessages:
	uv run django-admin compilemessages

makemessages:
	uv run sh -c 'django-admin makemessages -l ru
