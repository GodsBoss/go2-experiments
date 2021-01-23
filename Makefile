build:
	@echo "Nothing to build yet."

test:
	for p in $$(find . -name '*.go2' | xargs dirname | uniq);do docker run --rm -it -v $${PWD}:/home/godev/project --workdir /home/godev/project/$${p} godsboss/go2go -brackets test; done

translate:
	@# Only translate source files. Translating files needing something from other files does not seem to work.
	docker run --rm -it -v ${PWD}:/home/godev/project --workdir /home/godev/project godsboss/go2go -brackets translate $$(find . -name '*.go2' -not -name '*_test.go2')

clean:
	find . -name '*.go' -delete

.PHONY: \
	clean
