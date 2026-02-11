.PHONY: setup up down test build

setup:
	@echo "Setting up local environments..."
	cp .env.example .env
	cd src/frontend && npm install
	cd src/backend && npm install

up:
	@echo "Starting Medical Inc. local cluster..."
	docker-compose up -d

down:
	@echo "Tearing down local cluster..."
	docker-compose down

test:
	@echo "Running backend test suite..."
	cd src/backend && npm run test