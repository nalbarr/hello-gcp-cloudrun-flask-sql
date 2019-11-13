install:
	pip install -r requirements.txt

clean:
	find . -name '*.pyc' -exec rm -f {} +

run:
	python main.py

test:
	pytest -v

all: test run