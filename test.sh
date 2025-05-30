#!/usr/bin/env bash
##############################################################################
#
# test.sh
# -------------------
# tests
#
# @author Nicholas Wilde, 0xb299a622
# @date 26 April 2025
# @version 0.0.1
#
##############################################################################
set -eo pipefail

# https://stackoverflow.com/a/246128/1061279
readonly DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
readonly SCRIPT_NAME=$(basename "${0}")

# Import libbash if it exists
# https://github.com/nicholaswilde/dotfiles/blob/main/lib/libbash
[ -f "/usr/local/lib/bash/libbash" ] && source "/usr/local/lib/bash/libbash"

function show_usage(){
  printf "Usage: %s [-p PORT] [-h|-v] REPOSITORY:TAG\n" "${SCRIPT_NAME}"
}

# printf usage_error if something isn't right.
function usage_error(){
  show_usage
  printf "\nTry %s -h for more options.\n" "${SCRIPT_NAME}" >&2
  exit 1
}

# Display Help
function help(){
  show_usage
  script_desc
  printf "Mandatory arguments:\n"
  printf "  REPOSITORY:TAG  The repository and tag of the image to be updated\n\n"
  printf ""
  printf "Options:\n"
  printf "  -p PORT         Port number to use\n"
  printf "  -h              Print this Help.\n"
  printf "  -v              Print script version and exit.\n"
  exit 0
}

function main(){

}

case "$#" in
  0) usage_error;;
esac

main "$@"
