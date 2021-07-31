hello:
	@docker-compose run app ghc -e 'putStrLn "hello world"'

bash:
	@docker-compose run app bash

setup.tests:
	@docker-compose run app bash -c "cabal update && cabal install --lib HUnit"

run.tests:
	@docker-compose run app bash -c 'cabal install --lib HUnit  && ghci tests/tutorial/Basic.hs -e "runTestTT tests"'
