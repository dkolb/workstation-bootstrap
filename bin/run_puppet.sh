#!/bin/bash

CLONEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
set -x
cd $CLONEDIR

sed "s|%%CLONEDIR%%|${CLONEDIR}|g" hiera.yaml.template > hiera.yaml

if [[ -e /etc/arch-release ]]; then
  RUBYOPT="-W0" puppet apply --verbose $@ \
    --hiera_config=${CLONEDIR}/hiera.yaml \
    --modulepath="${CLONEDIR}/modules/local:${CLONEDIR}/modules/r10k" \
    ${CLONEDIR}/manifests/site.pp
else
  puppet apply --verbose $@ \
    --hiera_config=${CLONEDIR}/hiera.yaml \
    --modulepath="${CLONEDIR}/modules/local:${CLONEDIR}/modules/r10k" \
    ${CLONEDIR}/manifests/site.pp
fi
