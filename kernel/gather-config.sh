#!/bin/bash

################ detect script's path
prg=$0
if [ ! -e "$prg" ]; then
  case $prg in
    (*/*) exit 1;;
    (*) prg=$(command -v -- "$prg") || exit;;
  esac
fi
dir=$(
  cd -P -- "$(dirname -- "$prg")" && pwd -P
) || exit

#printf '%s\n' "${_script_total}"
_script_total=$dir/$(basename -- "$prg") || exit 
_script_dir=$( echo ${_script_total%/*} )
_script_file=$( echo ${p##*/} )

#printf '%s\n' ${path}

#################

# Gather current config and save it as kernelname-version
# replaces the config in case of dupliactes
zcat /proc/config.gz > "${_script_dir}/config/$(uname --kernel-release)"

