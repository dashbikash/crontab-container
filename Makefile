build:
	docker build -t cronjob .
run:
	docker run --rm --name cronjob -d cronjob
logs:
	docker logs -f cronjob
stop:
	docker stop cronjob
