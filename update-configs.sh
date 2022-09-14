#!/bin/bash

set -x


kubectl create configmap config -n prow --from-file=config.yaml=prow/config.yaml --dry-run -o yaml | kubectl replace configmap config -f -

kubectl create configmap plugins -n prow  --from-file=plugins.yaml=prow/plugins.yaml --dry-run -o yaml | kubectl replace configmap plugins -f -


# kubectl create configmap job-config --from-file=prow/jobs/ --dry-run -o yaml | kubectl replace configmap job-config -f -
