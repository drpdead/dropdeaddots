#!/usr/bin/env bash
#
# Bash script to read a Yaml file and create variables
# Based on https://gist.github.com/pkuczynski/8665367
#
# Intended for use parsing a lazyman.yaml config file
# on systems where yq is not available. See yq at:
# https://github.com/mikefarah/yq
#
# Source this file in a bash script and it provides two functions:
#
# parse_yaml : Output result from the read yaml file
# create_variables : Create variables based on yaml file passed by argument
#
# Or it can be executed directly from the command line:
#   /path/to/parse_yaml.sh file.yaml
#
# shellcheck disable=SC1003

parse_yaml() {
  local yaml_file=$1
  local prefix=$2
  local s
  local w
  local fs

  s='[[:space:]]*'
  w='[a-zA-Z0-9_.-]*'
  fs="$(echo @ | tr @ '\034')"

  (
    ${SED} -e '/- [^\“]'"[^\']"'.*: /s|\([ ]*\)- \([[:space:]]*\)|\1-\'$'\n''  \1\2|g' |
      ${SED} -ne '/^--/s|--||g; s|\"|\\\"|g; s/[[:space:]]*$//g;' \
          -e 's/\$/\\\$/g' \
          -e "/#.*[\"\']/!s| #.*||g; /^#/s|#.*||g;" \
          -e "s|^\($s\)\($w\)$s:$s\"\(.*\)\"$s\$|\1$fs\2$fs\3|p" \
          -e "s|^\($s\)\($w\)${s}[:-]$s\(.*\)$s\$|\1$fs\2$fs\3|p" |
      awk -F"$fs" '{
        indent = length($1)/2;
        if (length($2) == 0) { conj[indent]="+";} else {conj[indent]="";}
        vname[indent] = $2;
        for (i in vname) {if (i > indent) {delete vname[i]}}
          if (length($3) > 0) {
            vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
            printf("%s%s%s%s=(\"%s\")\n", "'"$prefix"'",vn, $2, conj[indent-1], $3);
          }
        }' |
      ${SED} -e 's/_=/+=/g' |
      awk 'BEGIN {
          FS="=";
          OFS="="
      }
      /(-|\.).*=/ {
          gsub("-|\\.", "_", $1)
      }
      { print }'
  ) <"$yaml_file"
}

unset_variables() {
  # Pulls out the variable names and unsets them.
  #shellcheck disable=SC2048,SC2206 #Permit variables without quotes
  local variable_string=($*)
  unset variables
  variables=()
  for variable in "${variable_string[@]}"; do
    tmpvar=$(echo "$variable" | grep '=' | ${SED} 's/=.*//' | ${SED} 's/+.*//')
    variables+=("$tmpvar")
  done
  for variable in "${variables[@]}"; do
    if [ -n "$variable" ]; then
      unset "$variable"
    fi
  done
}

create_variables() {
  local yaml_file="$1"
  local prefix="$2"
  local yaml_string
  yaml_string="$(parse_yaml "$yaml_file" "$prefix")"
  unset_variables "${yaml_string}"
  eval "${yaml_string}"
}

SED="sed"
have_gsed=$(type -p gsed)
[ "${have_gsed}" ] && SED="gsed"

# Execute parse_yaml() direct from command line

if [ "x" != "x${1}" ] && [ "x--debug" != "x${1}" ]; then
  parse_yaml "${1}" "${2}"
fi
