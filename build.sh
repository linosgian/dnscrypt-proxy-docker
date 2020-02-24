set -ex

USERNAME=linosgian
IMAGE=dnscrypt-proxy
version=`cat VERSION`

docker build --build-arg VERSION=$version -t $USERNAME/$IMAGE:latest .
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
