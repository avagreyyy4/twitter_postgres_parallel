#!/bin/sh

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <input_zip(s)>"
  exit 1
fi

python3 -u load_tweets.py --db postgresql://postgres:pass@localhost:6239 --inputs "$@"
