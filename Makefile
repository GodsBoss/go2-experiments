build:
	@echo "Nothing to build yet."

test:
	./all.sh test

translate:
	./all.sh translate

clean:
	find . -name '*.go' -delete

.PHONY: \
	clean
