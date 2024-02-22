install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	python -m textblob.download_corpora
test:
	python -m pytest -vv test_fine_tune_roberta.py

lint:
	pylint --disable=R,C *.py
	
format:
	black *.py nlplogic

all: install lint test format