#!/bin/sh

## Function With
#
#* Safely sets a environment or not variable to a value then runs a command 
#* and then restores the variable to its original value
#
#* Parameters:
#   param1: variable name
#   param2: temp value
#   param3: command
#
#* Usage:
#   With varname value command
#
#* for a better human readability use functions:
#
# function Foo() {
#   echo "$ENV_VAR"
# }
#
# With ENV_VAR "/foo/bin" Foo
#
#! Warning:
#!   work in progress
#!   there has been a problem with the restore of the variable if PATH is changed
#!   in the command
#
#* Copyright (c) 2022, Diego Vallejo
#* All rights reserved.
#

function With() {
    # if num of params is not 3, exit
    if [ $# -ne 3 ]; then
        echo "Usage: With varname value command"
        return 1
    fi
    # get the variables
    local varname=$1
    local value=$2
    local command=$3
    # get the original value string safely
    local oldvalue=$(eval echo \$$varname)
    # execute
    eval $varname=$value
    $command
    # restore the variable string Safely
    eval $varname=$oldvalue
    return 0
}

#####################################################
