all: push up

build: push
	ssh hcr 'cd haztecaso&& docker-compose build'

push:
	rsync -aPz . hcr:haztecaso --exclude .git --delete --delete-excluded

up: push
	ssh hcr 'cd haztecaso && docker-compose up -d --remove-orphans'

restart:
	ssh hcr 'cd haztecaso && docker-compose restart'

watch:
	nix-shell -p entr --run 'ls . | entr make push'
