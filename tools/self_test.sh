#!/bin/bash
#Copyright VigåLAN 2018 GNU gpl. v3

DEBUGFILE=foo.sh
while true; do
inotifywait -q -e modify $DEBUGFILE
if $(bash $DEBUGFILE self_test); then
        echo "$(date) Executing $DEBUGFILE"
  #./self_test.sh
else
        shellcheck $DEBUGFILE
        echo "$(date) FATAL: Self-test failed!"
fi
echo "$(date) Testrunner: Done, Build Successful!"
done
