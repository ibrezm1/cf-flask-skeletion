#!/usr/bin/env bash

SPACE=$1
# Diff app name in every deployment
#APP_NAME="skeleton-"`git rev-parse --short HEAD`

#Same appname for deployment
APP_NAME="skeleton-app"


TEMPLATE_MANIFEST_FILE="template-manifest-$SPACE.yml"
MANIFEST_FILE="manifest.yml"

echo "Creating manifest $MANIFEST_FILE from template $TEMPLATE_MANIFEST_FILE with APP_NAME=$APP_NAME"
sed -e "s/APP_NAME/$APP_NAME/" $TEMPLATE_MANIFEST_FILE > $MANIFEST_FILE
