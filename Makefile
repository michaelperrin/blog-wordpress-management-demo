SHELL:=/bin/bash

WORDPRESS_TOOLBOX=docker-compose run --rm wordpress_toolbox

start:
	docker-compose up -d

wordpress_install:
	$(WORDPRESS_TOOLBOX) install

wordpress_configure:
	$(WORDPRESS_TOOLBOX) configure
