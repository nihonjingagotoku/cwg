test:
	(export PYTHONPATH=$$PYTHONPATH:src; cd backend; pipenv run pytest test)
	(export PYTHONPATH=$$PYTHONPATH:src; cd backend; pipenv run pytest test --cov ./src)
