lint_js:
	@npm run lint

lint_python:
	@flake8 python/

lint_ruby:
	@rubocop ruby/

test_js:
	@npm run test

test_python:
	@cd python && mamba spec/ -f documentation

test_ruby:
	@cd ruby && rspec spec/ -f d
