#!/bin/bash

pushd schema/"$(basename "$0" .sh)" &&
    pg.sh --set ON_ERROR_STOP=ON -1 \
        -f envelope.sql &&
    popd || exit
