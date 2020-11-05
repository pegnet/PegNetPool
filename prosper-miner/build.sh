#!/usr/bin/env bash

gox -os="linux darwin windows freebsd" -arch="amd64" -ldflags="-X github.com/pegnet/PegNetPool/config.CompiledInBuild=`git rev-parse HEAD` -X github.com/pegnet/PegNetPool/config.CompiledInVersion=`git describe --tags`"
gox -os="linux" -arch="arm arm64" -ldflags="-X github.com/pegnet/PegNetPool/config.CompiledInBuild=`git rev-parse HEAD` -X github.com/pegnet/PegNetPool/config.CompiledInVersion=`git describe --tags`"

./rename.sh