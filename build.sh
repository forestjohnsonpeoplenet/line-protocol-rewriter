#!/bin/bash

touch line-protocol-rewriter \
 && rm line-protocol-rewriter \
 && /usr/local/go/bin/go build -o line-protocol-rewriter main.go sortByteSlices.go \
 && ./runTest.sh
