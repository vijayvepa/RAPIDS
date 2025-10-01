#!/bin/bash
set -e
# Check if nvidia-container-toolkit is installed
if ! dpkg -l | grep -q nvidia-container-toolkit; then
    exit 1
fi

# Check if nvidia-ctk command is available
if ! nvidia-ctk --version >/dev/null 2>&1; then
    exit 1
fi

# Check if Docker has NVIDIA runtime support
if ! docker info | grep -q nvidia; then
    exit 1
fi

# All checks passed
exit 0