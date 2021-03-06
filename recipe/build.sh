#!/bin/bash

# This disables any custom flags python-annoy sets and just takes CFLAGS/CXXFLAGS/LDFLAGS from the environment.
export ANNOY_COMPILER_ARGS='-Wall'
if [ "$(uname)" = "Darwin" ]; then
    export ANNOY_LINKER_ARGS=','
fi

$PREFIX/bin/python -m pip install . --no-deps -vv

