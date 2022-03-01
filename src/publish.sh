#!/bin/bash

for i in {1..100}
do
    az storage message put \
        --connection-string $1 \
        --content "foo" \
        --queue-name testqueue \
        --output none
done
