#!/usr/bin/env bash
set -ex
PROJECT_NAME=$1
PACKAGE_NAME=$2


git reset $(git rev-list --max-parents=0 --abbrev-commit HEAD)
find . -type f -exec sed -i -e "s/{django-app-template}/$PROJECT_NAME/g" -e "s/{example_app}/$PACKAGE_NAME/g" {} \;
mv example_app $PACKAGE_NAME
rm -f $0

git add .
git commit -am "Initial"
