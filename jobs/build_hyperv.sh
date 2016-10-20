#!/bin/bash
#
hyperv_node=$1
# Loading all the needed functions
source /usr/local/src/nova-ci/jobs/library.sh

# Loading parameters
source /home/jenkins-slave/runs/devstack_params.$ZUUL_UUID.txt

# Load host and credentials
source $CREDENTIALS_AND_HOST_FILE

# building HyperV node
echo $hyperv_node
join_hyperv $hyperv_node $CERT $KEY

