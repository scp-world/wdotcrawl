.PHONY: run test clean

exec_root = $(shell pwd)
ts = $(shell date +%Y%m%d_%H%M%S)
short_ts = $(shell date +%Y%m%d)

#
prepare:
	echo "prepare"

build-gis-docker:
	docker-compose -f stack.yml build

run: input = http://example.wikidot.com
run: output = ExampleRepo
run:
	docker-compose -f stack.yml run \
	  crawl \
 	    sh -c 'cd /src; python crawl.py --debug https://${input}.wikidot.com --dump /output/${output}'
