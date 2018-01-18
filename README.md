## KITCEP

This toolkit is for free use of CEP data, which belong to the Brazilian citizen but CORREIOS(is a federal public company) sells for 850 reais.

And if you pay for the CEP data you end up getting the data in access and txt formats with poor documentation and basic support.

None of the CORREIOS work on this package they sell justifies the charge of __850 Brazilian REAIS__, apart from the guarantees it has due to the monopoly of the activity (which has poor execution; bad service) and the fact of ignoring requests for opening of CEP data for use by society(put it online for free), without any onus, as a bonus to endure an expensive service.

Some videos about the quality of the postal service can be seen in the links below.

https://www.youtube.com/watch?v=yEdQm7aHbBY

https://www.youtube.com/watch?v=7EjKdoRk_Bo

https://www.youtube.com/watch?v=ms4QN7juerY

We need to stop accept this kind of situation. 

### About the Toolkit:


#### Dependencies:

1. cdb by DJB https://cr.yp.to/cdb.html

#### How to use 

1. check https://github.com/iannsp/kitcep.git

2. untar cep.cdb.tar.gz

3. choose and use one of the provide interfaces

##### data formats 

 1. TEXT

 2. JSON 
 2. Desktop Notification [http://developer.linuxmint.com/projects.html](Cinnamon Mint Desktop) 

## Interfaces ##

1. cdb itself
```nash
cdb [CEP] < cepdata.cdb
``` 

2. shell script
```bash
./fastcep.sh [CEP] [FORMAT=cli|JSON]
```


They keys you can use are:

| key name | sample value           |
|----------|------------------------|
| CEP      | 1001000 ([0-9]{7,8)    |
|----------|------------------------|


and answers are json format.

## Samples


##### ask for the cep 1001000 
```bash
#cli format
./fastcep.sh 1001000

    CEP 1001000
    logradouro: da Sé
    complemento: lado ímpar
    local: 
    bairro: Sé
    cidade: São Paulo
    UF: SP - São Paulo
    area m²: 1521.11
    COD. IBGE: 35
    GEO: lat.:-23.5516833 lng.:-46.6349531

#json format
./fastcep.sh 1001000 json
{"logradouro":"da Sé","complemento":"lado ímpar","local":"","bairro":"Sé",
"cidade":"São Paulo","uf":"SP","estado":"São Paulo", "area":"1521.11",
"codigo_ibge":"35","latitude":"-23.5516833", "longitude":"-46.6349531"}
i
```


LICENSE: GPL 3.0
Quick Summary: "You may copy, distribute and modify the software as long as you track changes/dates in source files. Any modifications to or software including (via compiler) GPL-licensed code must also be made available under the GPL along with build & install instructions." (from https://tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3))



https://www.gnu.org/licenses/gpl-3.0.en.html

