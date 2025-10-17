build:
	./build.sh

install:
	uv sync

collectstatic:
	uv run python manage.py collectstatic --noinput

migrate:
	uv run python manage.py migrate

render-start:
	uv run gunicorn task_manager.wsgi

dev:
	uv run manage.py runserver

lint:
	uv run ruff check
