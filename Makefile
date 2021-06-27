all: push up

build:
	ssh hcr 'cd docker && docker-compose build'

push:
	rsync -aPz . hcr:docker --exclude .git --delete --delete-excluded

up:
	ssh hcr 'cd docker && docker-compose up -d'

restart:
	ssh hcr 'cd docker && docker-compose restart'

watch:
	nix-shell -p entr --run 'ls . | entr make push'
