This is a practice repo where I run production ready airflow projects at least according to me.

1. Create a virtual environment  

```bash
python -m venv .venv
```  

2. Activate virtual environment  

```bash
source .venv/bin/activate
```

3. Update and install dependecies  

```bash
pip install --upgrade pip && pip install -r requirements.txt
```

4. Running locally. It has loads of requirements.
`airflow db init`  - long output with Initialization done at the end.
`airflow users create --username admin --password admin firstname Anonymous --lastname Admin --role Admin --email admin@example.org`
`airflow users create \
          --username admin \
          --firstname FIRST_NAME \
          --lastname LAST_NAME \
          --role Admin \
          --email admin@example.org
`
Prompt for the password. You can add the one above. The last two are continuous processes therefore you need the terminal to be open at runtime.

`airflow webserver`
`airflow scheduler`


- Copy the `*.py` files that you want scheduled to the ~/airflow/dags/

- Start up the webserver  
`airflow webserver`  

- Start up the scheduler & trigger the dag to run using the UI
`airflow scheduler`

5. Save time and run in a Makefile but remember to add the .venv to your bash profile.  

```bash
make build run  
```
