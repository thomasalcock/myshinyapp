
build_app:
	DOCKER_BUILDKIT=1 docker build -t house_app .

remove:
	docker rmi $$(docker images -f "dangling=true" -q)

stopall:
	docker stop $$(docker ps -a -q)

run_app:
	docker run \
	--rm \
	--name house_app \
	-p 3838:3838 \
	-d \
	--net api-workshop-net \
	house_app