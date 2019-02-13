#!/usr/bin/env bash

me="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source_dir="${me}/product"

if [[ -z "$PIVNET_TOKEN" ]]; then
    echo "PIVNET_TOKEN not set! Aborting..."
    exit 1
fi

cat ${source_dir}/product.json | jq --arg SECRET ${PIVNET_TOKEN} '.source.api_token = $SECRET' | docker run -v ${me}/product/:/product -i pivotalcf/pivnet-resource  /opt/resource/out /product
