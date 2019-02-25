WORDPRESS_TOOLBOX=docker-compose run --rm wordpress_toolbox

start:
	docker-compose up -d --build

stop:
	docker-compose stop

wordpress_install: start
	$(WORDPRESS_TOOLBOX) install

wordpress_configure:
	$(WORDPRESS_TOOLBOX) configure

wordpress_install_plugins:
	$(WORDPRESS_TOOLBOX) install_plugins

wordpress_update: start
	$(WORDPRESS_TOOLBOX) update

clean: stop
	@echo "💥 Removing Wordpress..."
	@rm -rf wordpress
	@echo "💥 Removing Docker containers..."
	docker-compose rm -f
