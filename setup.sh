#!/bin/bash
WORKDIR="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

# Ansible requirements
pip install -r requirements.txt

# Ansible colections
mkdir -p "${WORKDIR}/collections"
ansible-galaxy collection install -r "${WORKDIR}/requirements.yml" -p "${WORKDIR}/collections"

# Kubernetes.core
pip install -r "${WORKDIR}/collections/ansible_collections/kubernetes/core/requirements.txt"
