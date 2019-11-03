#! /usr/bin/env bash

source .env
if [ "$PORT" ]; then
  export PORT="$PORT"
fi
