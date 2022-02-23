#!/bin/bash
##################################################
# Script Name: packer-build.bash                 #
# Description: To build VM image using Packer    #
# Version: 20220216.01                           #
# Change Logs (Latest on top):                   #
#    20220216.01 - Initial Release               #
##################################################

### DEFINITIONS ###
DATE=$(date +"%Y%m%d")
BASE=/opt/packer/rockylinux85
VAR_FILE=${BASE}/rockylinux85.pkrvars.hcl
PACKER_BINARY=/usr/local/bin/packer
PACKER_CONFIG_DIR=${BASE}
PACKER_CACHE_DIR=${BASE}/.packer_cache/
PACKER_LOG=1
PACKER_LOG_PATH=${BASE}/logs/packer-build.log.${DATE}
CHECKPOINT_DISABLE=1
TMPDIR=/tmp

# https://www.packer.io/docs/configure#full-list-of-environment-variables-usable-for-packer
export PACKER_CONFIG_DIR
export PACKER_CACHE_DIR
export PACKER_LOG
export PACKER_LOG_PATH
export CHECKPOINT_DISABLE
export TMPDIR

### BODY SCRIPT ###
${PACKER_BINARY} init -var-file=${VAR_FILE} ${PACKER_CONFIG_DIR}
${PACKER_BINARY} validate -var-file=${VAR_FILE} ${PACKER_CONFIG_DIR}
${PACKER_BINARY} build -var-file=${VAR_FILE} ${PACKER_CONFIG_DIR}
