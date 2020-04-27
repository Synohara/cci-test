#!/usr/bin/env bash
DOCKER_REPOSITORY_NAME=$1
DOCKER_REPOSITORY=${ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com

# docker デーモン起動
service docker start

# dockerイメージ作成
docker build . --tag "${DOCKER_REPOSITORY}/${DOCKER_REPOSITORY_NAME}:${CIRCLE_BUILD_NUM}"