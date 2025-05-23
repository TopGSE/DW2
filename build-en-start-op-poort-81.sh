
set -e

docker build -t missing-manual-image .

docker rm -f missing-manual-container || true

docker run -d --name missing-manual-container -p 81:80 missing-manual-image
