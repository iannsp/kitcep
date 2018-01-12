if [ "$format" == "TXT" ]; then
    echo "CEP: $1
logradouro: $logradouro
complemento: $complemento
local: $local
bairro: $bairro
cidade: $cidade
UF: $uf - $estado
area m²: $area
COD. IBGE: $codigo_ibge
GEO(latitude,longitude): $latitude, $longitude
"
    exit 0
fi

