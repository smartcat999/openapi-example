
REPO ?= 2030047311
TAG ?= latest

image:
	docker build -f Dockerfile -t ${REPO}/openapi-example:${TAG} .
	docker push ${REPO}/openapi-example:${TAG}

dependencies:
	pip install -r ./requirements.txt

run: dependencies
	python server.py

update-dependencies:
	pip freeze > ./requirements.txt