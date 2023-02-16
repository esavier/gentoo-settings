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

latest_config=$(ls kernel/config/ -Art | tail -1)
echo -e "using :\t\t\t ${latest_config}"

config_abspath="${_script_dir}/${latest_config}"
echo -e "path to the config is \t ${config_abspath}"

#genkernel --b2sum --btrfs --busybox --luks --firmware --firmware-install --no-lvm --no-mdadm --kernel-config=${abspath} --nconfig all"


