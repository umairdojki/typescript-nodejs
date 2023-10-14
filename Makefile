include .env

clean:
	rm -f app.zip && rm -Rf dist

install:
	npm install

build:
	npm run build

package:
	zip -r app.zip dist

package-ci:
	npm prune --omit=dev
	zip -r app.zip dist

lint:
	npm run lint

fmt-check:
	npm run fmt-check

test:
	npm run test

test-coverage:
	npm run test:coverage