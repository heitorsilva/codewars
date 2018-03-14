lint_js:
	@npm run lint

lint_ruby:
	@cd ruby && rubocop *.rb spec/*_spec.rb

test_js:
	@npm run test

test_ruby:
	@cd ruby && rspec spec/ -f d
