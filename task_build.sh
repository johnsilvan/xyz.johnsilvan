#!/usr/bin/env bash

usage="Usage:
  $0 <VERSION>"

 
if [[ -z $1 ]]; then
  echo "$usage"
  exit 1
fi

version=$1

hugo --cleanDestinationDir

docker build -t johnsilvan/johnsilvan.xyz:latest -t johnsilvan/johnsilvan.xyz:${version} .

echo "Completed ${0} in ${SECONDS} s"
