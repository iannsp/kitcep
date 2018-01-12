
if [ "$format" == "json" ]; then
echo "{\"cep\":\"$1\", \"logradouro\": \"$logradouro\", \"complemento\": \"$complemento\", \"local\": \"$local\", \"bairro\": \"$bairro\", \"cidade\": \"$cidade\", \"uf\": \"$uf\", \"estado\": \"$estado\", \"area_m2\": \"$area\", \"COD_IBGE\": \"$codigo_ibge\", \"GEO\":{\"lat\":\"$latitude\", \"lng\":\"$longitude\"}}";
    exit 0
fi

