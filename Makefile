build:
	docker build -t cronjob .
run:
	docker run --rm --name cronjob -d -v /tmp:/tmp cronjob
stop:
	docker stop cronjob