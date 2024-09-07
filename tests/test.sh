set -ex

docker-compose up -d
# TODO sync container readiness proba
sleep 3

# print outputs
curl localhost:8888
curl localhost:8888/api/ping

# asserts
curl localhost:8888 | grep -q "hello world"
curl localhost:8888/api/ping | grep -q "pong"

echo TESTS PASSED.
