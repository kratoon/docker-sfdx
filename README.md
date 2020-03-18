# docker-sfdx

[Docker Hub](https://hub.docker.com/repository/docker/kratoon3/sfdx)

Run sfdx commands in docker.
Each tag mirrors sfdx-cli verson.

### Contains
* ubuntu:19.04
* sfdx-cli
* jq
* git

### List orgs authenticated on your local machine
`$ docker run --rm -v /<localpath>/.sfdx:/root/.sfdx kratoon3/sfdx sfdx force:org:list`

### Build image
Always use current sfdx-cli version to build docker image with same tag.  
`$ make tag=7.50.0` 

### Verify version
`$ docker run --rm kratoon3/sfdx sfdx version`

