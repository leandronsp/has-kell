hello:
	@docker-compose run app ghc -e 'putStrLn "hello world"'

bash:
	@docker-compose run app bash

repl:
	@docker-compose run app ghci

setup.tests:
	@docker-compose run app bash -c "cabal update && cabal install --lib HUnit"

run.tests:
	@docker-compose run app bash -c 'cabal install --lib HUnit && \
		echo "----Basic----" && ghci tests/tutorial/Basic.hs -e "runTestTT tests" && \
		echo "----Lists----" && ghci tests/tutorial/Lists.hs -e "runTestTT tests" && \
		echo "----Variables----" && ghci tests/tutorial/Variables.hs -e "runTestTT tests"'
