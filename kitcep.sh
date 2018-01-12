#!/usr/bin/env bash 
#cdbget $1 < cepdata.cdb | jq -r
cep=$1+0

#format cli:tabular data | json: jq output

if [ $# -lt 1 ]; then
 echo " usage:  ./kitcep CEP [format]
 CEP [0-9]{5,7} 
 format optional format [TXT|JSON]
   default: TXT"
 exit 1;
fi


INFO=`cdbget $1 < cep.cdb`

if [ -z ${#INFO}  ]; then 
    echo "cep $cep not found" ;
    exit 1; 
fi;


logradouro=`cut -d '|' -f 1 <<< "$INFO"`
complemento=`cut -d '|' -f 2 <<< "$INFO"`
local=`cut -d '|' -f 3 <<< "$INFO"`
bairro=`cut -d '|' -f 4 <<< "$INFO"`
cidade=`cut -d '|' -f 5 <<< "$INFO"`
uf=`cut -d '|' -f 6 <<< "$INFO"`
estado=`cut -d '|' -f 7 <<< "$INFO"`
area=`cut -d '|' -f 8 <<< "$INFO"`
codigo_ibge=`cut -d '|' -f 9 <<< "$INFO"`
latitude=`cut -d '|' -f 10 <<< "$INFO"`
longitude=`cut -d '|' -f 11 <<< "$INFO"`


# load configuration
source .kitcep.cfg

#set format as default output format
format=$DEFAULT_OUTPUT

echo $format
if [ $# -eq 2 ]; then
    format=$2
fi



source .kitcep.load
