#!/bin/bash

indexer -c $SPHINX_CONF_FILE --all
searchd -c $SPHINX_CONF_FILE --nodetach "$@"
