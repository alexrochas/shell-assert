#!/bin/bash

usage() { { echo "sh ./assert.sh \"string\" --contains=\"s\"" 1>&2; exit 1; } }

WORK_PATH=`dirname "$0"`

OPTIND=2
while getopts "c:-:" option; do
	case "${option}" in
		-) case "${OPTARG}" in
			contains=*)
				val=${OPTARG#*=}
				opt=${OPTARG%=$val}
				sh ./contains.sh $1 $val
				;;
			*) usage;;
		esac;;
		c) sh ./contains.sh $1 ${OPTARG} ;;
		*) usage;;
	esac
done
