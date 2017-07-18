#!/bin/bash

set -e
set -x

# Build dependencies
export ARROW_HOME=$PREFIX
export PARQUET_HOME=$PREFIX

export CXXFLAGS="${CXXFLAGS} -std=c++11 -stdlib=libc++"

cd python
$PYTHON setup.py \
        build_ext --build-type=release --with-parquet \
        install --single-version-externally-managed --record=record.txt
