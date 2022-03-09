#!/usr/bin/env bash

version=$(cat charts/single-cell-cloud-lab/Chart.yaml | yq '.version')
python scripts/deploy_change_set.py \
    --changeset-file changesets/single-cell-cloud-lab/changeset.json \
    --helm-chart-version ${version} \
    --changeset-name "internal-release-${version}-1" \
    --version-title "Internal Release ${version}-1" \
    --release-notes "Internal Release ${version}-1"