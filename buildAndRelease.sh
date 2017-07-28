#!/bin/bash

if [ -z $1 ]; then
  echo "missing first argument: tag"
  exit 1
fi

touch line-protocol-rewriter \
 && rm line-protocol-rewriter \
 && /usr/local/go/bin/go build -o line-protocol-rewriter main.go sortByteSlices.go \
 && ./runTest.sh \
 && docker build -t sequentialread/line-protocol-rewriter:$1 . \
 && docker push sequentialread/line-protocol-rewriter:$1
