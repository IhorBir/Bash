#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
echo "Original: $BUFFETT"
echo
BUFFETT=${BUFFETT/snow/foot}
echo $BUFFETT
BUFFETT=${BUFFETT/snow}
echo $BUFFETT
BUFFETT=${BUFFETT/finding/getting}
echo $BUFFETT
echo
BUFFETT=${BUFFETT/wet*/wet}
echo $BUFFETT
