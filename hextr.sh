#!/usr/bin/bash

CYANO='\033[0;36m'
FIM='\033[0m'

if [[ -z "$*" ]]; then
  read -rp "$(echo -e $CYANO)Digite um número hex:$(echo -e $FIM) " opcao_hex
  echo -ne "${CYANO}O valor decimal do${FIM} ${opcao_hex} ${CYANO}é:${FIM} "
  echo "obase=10; ibase=16; ${opcao_hex}" | bc
else
  echo -n "$(echo -e $CYANO)O valor decimal do$(echo -e $FIM) $* $(echo -e $CYANO)é:$(echo -e $FIM) "
  echo "ibase=16; $*" | bc
fi
