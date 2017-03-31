#!/bin/bash

__run_supervisor() {
echo "Running the run_supervisor function."
supervisor -n
}

# Call all functions
__run_supervisor
