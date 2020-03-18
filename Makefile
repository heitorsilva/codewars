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
	@cd ruby && rspec **/*_spec.rb -f d

test_rust:
	@for dir in ./rust/*; do \
		if [ -d $$dir ]; then \
			cd $$dir && cargo test; \
		fi; \
	done
