#!/bin/bash

set -e

UPGRADE_OUTPUT=$(rpm-ostree upgrade --check)

echo "UPGRADE_OUTPUT: $UPGRADE_OUTPUT"

if [[ $UPGRADE_OUTPUT == *"No upgrade available."* ]]; then
    echo "No upgrade available."
    exit 0
fi

rpm-ostree upgrade --reboot
