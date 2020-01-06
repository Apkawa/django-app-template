#!/usr/bin/env bash
set -e
PROJECT_NAME=$1
PACKAGE_NAME=$2


find . -type f -exec sed -e "s/{django-app-template}/$PROJECT_NAME/g" -e "s/{example_app}/$PACKAGE_NAME/g" {} \;
