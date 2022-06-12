venv:
	# create a virtual environment
	python -m venv .venv

activate:
	# activate venv
	bash -c "source .venv/bin/activate"

install:
	# install commands
	pip --no-cache-dir install --upgrade pip &&\
		pip --no-cache-dir install -r requirements.txt

run:
	# download rocket launches, store in working directory and notify
	# chapter 2 data pipelines with apache airflow
	docker run -it -p 8080:8080 -v $(pwd)/download_rocket_launches.py:/opt/airflow/dags/download_rocket_launches.py --entrypoint=/bin/bash --name airflow apache/airflow:2.0.0-python3.8 -c '(airflow db init && airflow users create --username admin --password admin --firstname Anoymous --lastname Admin --role Admin --email admin@example.org); airflow webserver & airflow scheduler'


all: venv activate install run

