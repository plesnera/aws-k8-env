#!/usr/bin/env bash

docker run  \
	-it --rm \
	-v $HOME/.aws:/root/.aws \
	-v $HOME/.kube:/root/.kube \
	"$@"
