#!/bin/sh


WRITEFILE="$1"
WRITESTR="$2"

if [ -z "${WRITEFILE}" ] || [ -z "${WRITESTR}" ];
  then
	echo "You must specify the writer file and write string"
	exit 1
fi


echo touch "${WRITEFILE}"

if [ -f "${WRITEFILE}" ]; 
then
  echo "File does not exist."
  exit 1
fi

echo "${WRITESTR}" > "${WRITEFILE}"
