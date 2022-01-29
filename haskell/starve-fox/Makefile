.PHONY: test

ghcid:
	ghcid --command "cabal repl" --allow-eval

ghcid-test:
	ghcid --command "cabal repl starve-fox-tests" --test "Main.main"

test:
	cabal test --test-show-details=streaming --enable-coverage
