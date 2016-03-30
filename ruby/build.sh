#/bin/sh
docker build --rm -t ruby_test .
docker rm -f ruby_test &> /dev/null || true
CURRENT_DIR=`pwd`
docker run \
   -v ${CURRENT_DIR}/workdir:/workdir \
   --name ruby_test \
   -ti ruby_test

