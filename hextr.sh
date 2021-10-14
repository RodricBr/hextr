#!/usr/bin/bash

if [[ -z "$*" ]]; then
  read -rp "Digite um número hex: " opcao_hex2
  echo -ne "O valor decimal do ${opcao_hex2} é: "
  echo "obase=10; ibase=16; ${opcao_hex2}" | bc
else
  echo -n "O valor decimal do $* é: "
  echo "ibase=16; $*" | bc
fi
