#!/bin/bash

# Clear out the ignition directory first to remove leftovers from previous runs
./_butane-compile.sh
python -m http.server