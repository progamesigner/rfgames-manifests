#!/bin/sh

docker build \
    --file apply.dockerfile \
    --tag docker.pkg.github.com/progamesigner/rfgames-infrastructure/apply-api-server:1.0 \
    --tag progamesigner/rfgames-apply-api-server:1.0 \
    .

docker build \
    --file contact.dockerfile \
    --tag docker.pkg.github.com/progamesigner/rfgames-infrastructure/contact-api-server:1.0 \
    --tag progamesigner/rfgames-contact-api-server:1.0 \
    .

docker push docker.pkg.github.com/progamesigner/rfgames-infrastructure/apply-api-server:1.0
docker push docker.pkg.github.com/progamesigner/rfgames-infrastructure/contact-api-server:1.0

docker push progamesigner/rfgames-apply-api-server:1.0
docker push progamesigner/rfgames-contact-api-server:1.0
