.PHONY: docker-up docker-down docker-up-rebuild docker-enter-container

docker-up:
	@echo "Building ml_workspace container..."; \
	docker compose up -d

docker-down:
	@echo "Stopping ml_workspace container..."; \
	docker compose down

docker-rebuild:
	@echo "Rebuilding ml_workspace container..."; \
	docker compose up -d --build

docker-enter-container:
	echo "Entering ml_workspace container..."; \
	docker exec -it ml_workspace /usr/bin/fish; \