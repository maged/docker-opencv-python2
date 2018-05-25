DOCKER_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";
ROOT_DIR="$( cd "${DOCKER_DIR}/.." && pwd )"
echo "ROOT DIR: $ROOT_DIR"
docker run \
  --rm \
  --name dcv \
  --volume "$ROOT_DIR:/app" \
  --volume "$ROOT_DIR/uploads:/uploads" \
  -it -p 5000:5000 \
  cvpy \
  /bin/bash
