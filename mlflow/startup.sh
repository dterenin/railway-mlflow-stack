#!/bin/bash
echo 'starting mlflow server...'

exec mlflow server \
    --backend-store-uri "$DB_URL" \
    --artifacts-destination s3://bucket \
    --host 0.0.0.0 \
    --port "${PORT:-5000}" \
    --allowed-hosts all \
    --cors-allowed-origins "*"
    --workers 1
