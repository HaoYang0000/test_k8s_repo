#!/bin/bash

SOURCE_BRANCH=$1
TARGET_BRANCH=$2
GITHUB_CRED=$3

# echo $GITHUB_CRED
# # Trigger the GitHub Vcluster workflow dispatch event
# curl -X POST -v \
#  -H "Accept: application/vnd.github+json" \
#  -H "Authorization: Bearer $GITHUB_CRED" \
#  -H "X-GitHub-Api-Version: 2022-11-28" \
#  --fail \
#  https://api.github.com/repos/HaoYang0000/test_vcluster_repo/actions/workflows/merge_branch.yaml/dispatches \
#  -d '{  "ref":"master", "inputs":{ "source_branch":"$SOURCE_BRANCH", "target_branch":"$TARGET_BRANCH"} }'


curl -L -v \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_CRED" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/HaoYang0000/test_vcluster_repo/dispatches \
  -d '{"event_type": "curl_request_merge", "client_payload":{"source_branch":"'"$SOURCE_BRANCH"'","target_branch":"'"$TARGET_BRANCH"'"}}'
