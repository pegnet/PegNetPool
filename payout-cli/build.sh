#!/usr/bin/env bash

gox -os="linux darwin windows" -arch="amd64" -ldflags="-X github.com/pegnet/PegNetPool/config.CompiledInBuild=`git rev-parse HEAD` -X github.com/pegnet/PegNetPool/config.CompiledInVersion=`git describe --tags`"
