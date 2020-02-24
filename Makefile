installation:
	@echo "Let's install composer"
	composer install

test_unit:
	@echo "Let's run our unit test"
	bin/phpunit tests/Unit
	
test_integrate:
	@echo "Let's run our integration test"
	bin/phpunit tests/Integration

test_func:
	@echo "Let's run our functionnal test"
	php vendor/bin/behat

test:
	@echo "Let's call them three"
	test_unit
	test_integrate
	test_func

start:
	php bin/console server:run