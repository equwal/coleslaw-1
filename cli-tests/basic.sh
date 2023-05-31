#!/bin/bash -x

set -e

dir=$(mktemp -d)

cd $dir

coleslaw setup

cat .coleslawrc

post=$(coleslaw new post "my first blog")

echo "my firrrrrrst text!!!!" >> "$post"

cat "$post"

coleslaw generate

coleslaw preview &
pid=$!

trap "kill $pid; rm -rf $dir" EXIT

sleep 3

try_query=${1:-true}

if $try_query
then
    # Doesn't run on Travis!
    curl --fail 127.0.0.1:5000
    ! curl --fail 127.0.0.1:5000/nosuchurl
    echo success!
fi

# (
#     wget 127.0.0.1:5000/nosuchurl -O-
#     echo $?
#     true
# )



