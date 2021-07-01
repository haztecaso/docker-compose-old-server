all: push up

build:
	ssh hcr 'cd haztecaso&& docker-compose build'

push:
	rsync -aPz . hcr:haztecaso --exclude .git --delete --delete-excluded

up:
	ssh hcr 'cd haztecaso && docker-compose up -d'

restart:
	ssh hcr 'cd haztecaso && docker-compose restart'

watch:
	nix-shell -p entr --run 'ls . | entr make push'
