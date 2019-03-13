#!/usr/bin/env bash

# exit when any command fails
set -e

owner="ons"
contentType="application/json"
url="https://api.algpoc.com/v1/algo" #ons
#url="https://api.algorithmia.com/v1/algorithms" #public

while getopts "a:c:d:k:o:u:v:" option; do
    case "${option}" in
    a) algorithm=${OPTARG};;
    c) contentType=${OPTARG};;
    d) data=${OPTARG};;
    k) authKey=${OPTARG};;
    o) owner=${OPTARG};;
    u) url=${OPTARG};;
    v) version=${OPTARG};;
    *) echo "script usage: $(basename "$0") [-a algorithm name] [-k auth key] [-l language (java, python3-1, scala)] [-n network_access (isolated, full)] [-o owner] [-u Algorithmia management api url]" >&2
       exit 1;;
    esac
done

curl -X POST \
-d "${data}" \
-H "Content-Type: ${contentType}" \
-H "Authorization: Simple "${authKey}"" \
"${url}"/"${owner}"/"${algorithm}"/"${version}"
