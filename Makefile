
init:
	docker build -t phoenix . && docker run --rm -v ${PWD}:/app -w /app --entrypoint bash phoenix -c 'chmod +x init.sh && ./init.sh'

migrate:
	 # dc up -d
	docker run --rm --link db:db --net learn_default -v ${PWD}:/app -w /app --entrypoint bash phoenix -c 'chmod +x migrate.sh && ./migrate.sh'