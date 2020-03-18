
image_build:
	docker image build --build-arg CACHEBUST=$(date +%s) -t kratoon3/sfdx:$(tag) -t kratoon3/sfdx:latest .

