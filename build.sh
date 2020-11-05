#!/usr/bin/env bash

go install -ldflags="-X github.com/pegnet/PegNetPool/config.CompiledInBuild=`git rev-parse HEAD` -X github.com/pegnet/PegNetPool/config.CompiledInVersion=`git describe --tags`"