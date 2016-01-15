ts:=$(shell date '+%Y%m%d%H%M%S')
name=debian
vendor=tmaczukin
tag=jessie
imageName=$(vendor)/$(name)

build: Dockerfile
	@docker pull debian:jessie
	@docker build --rm -t $(imageName):$(tag) .
	@docker tag -f $(imageName):$(tag) $(imageName):latest

ubuild: update build

update: Dockerfile
	@sed -i 's/# update_[0-9]*/# update_$(ts)/' Dockerfile

