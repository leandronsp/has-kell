haskell.hello:
	@docker-compose run app ghc -e 'putStrLn "hello world"'
