build:
	./build.sh

install:
	uv sync --no-dev

dev-install:
	uv sync

migrate:
	uv run python manage.py migrate

collectstatic:
	uv run python manage.py collectstatic --noinput

render-start:
	uv run gunicorn task_manager.wsgi

run:
	uv run manage.py runserver

lint:
	uv run ruff check

lint-fix:
	uv run ruff check --fix

test:
	uv run pytest --ds=task_manager.settings --reuse-db

compilemessages:
	uv run django-admin compilemessages

makemessages:
	uv run sh -c 'django-admin makemessages -l ru

coverage:
	uv run coverage run --omit='*/migrations/*,*/settings.py,*/manage.py,*/venv/*,*/.venv/*' -m pytest --ds=task_manager.settings
	uv run coverage report --show-missing --skip-covered


ci-install:
	uv sync --group dev

ci-migrate:
	uv run python manage.py makemigrations --noinput && \
	uv run python manage.py migrate --noinput

ci-test:
	uv run coverage run --omit='*/migrations/*,*/settings.py,*/manage.py,*/venv/*,*/.venv/*' -m pytest --ds=task_manager.settings --reuse-db
	uv run coverage xml
	uv run coverage report --show-missing --skip-covered
