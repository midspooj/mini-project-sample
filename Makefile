#Adding this to install all the packages in requirements.txt - I have not included versions of the individual packages in the requirements file
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

#Adding this to format code using black
format:	
	black *.py 

test:
	python -m pytest -vv --cov=main check_average.py

lint:
	pylint --disable=R,C --ignore-patterns=check_.*?py *.py

all: install lint format test
