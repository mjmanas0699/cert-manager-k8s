#!/bin/sh

if [ "$#" -ne 1 ]
then
  echo "Usage: Must supply a domain"
  exit 1
fi

DOMAIN=$1

openssl genrsa -out $DOMAIN.key 2048
openssl req -x509 -new -nodes -key $DOMAIN.key -sha256 -days 1825 -out $DOMAIN.pem

