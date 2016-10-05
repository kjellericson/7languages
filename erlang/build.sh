#/bin/sh
docker build --rm -t erlang_test .
docker rm -f erlang_test &> /dev/null || true
CURRENT_DIR=`pwd`
docker run \
   -v ${CURRENT_DIR}/workdir:/workdir \
   --name erlang_test \
   -ti erlang_test

