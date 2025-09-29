#!/bin/bash
set -e 

source ./env-config.sh

gh auth status || gh auth login

gh secret set SPRING_DATASOURCE_URL --repo $GITHUB_REPO --body "$JDBC_CONNECTION_STRING"

gh secret set SPRING_DATASOURCE_USERNAME --repo $GITHUB_REPO --body $DB_ADMIN

gh secret set SPRING_DATASOURCE_PASSWORD --repo $GITHUB_REPO --body $DB_PASSWORD
