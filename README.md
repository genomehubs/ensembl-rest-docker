# ensembl-rest-docker
Docker container for setting up an Ensembl REST server

Following instruuctions at https://github.com/Ensembl/ensembl-rest/wiki/REST-Installation-and-Development

Checkout this git repository:
```
git clone https://github.com/genomehubs/ensembl-rest-docker.git
cd ensembl-rest-docker
```
Run generate_reg.pm in this folder using a genomehubs ensembl conf [setup.ini](https://github.com/genomehubs/template/blob/master/ensembl/conf/setup.ini) file to create reg.pm (for more info on how to use setup.ini, see the [GenomeHubs documentation](https://genomehubs.gitbooks.io/genomehubs/content/quick-start/ensembl-site.html):
```
./generate_reg.pm /path/to/setup.ini
```

Run docker container, mounting the reg.pm and ensembl_rest.conf files in this repo:
```
docker run -d \
  --name rest-test \
  -v `pwd`/reg.pm:/home/ubuntu/src/ensembl-rest/reg.pm \
  -v `pwd`/ensembl_rest.conf:/home/ubuntu/src/ensembl-rest/ensembl_rest.conf \
  -p 3000:3000 \
  genomehubs/ensembl-rest
```

Test by visiting the port that the docker container was started on:
```
curl localhost:3000/lookup/id/DPOGS200009.json
```
Result:
```
{"strand":1,"biotype":"protein_coding","id":"DPOGS200009","end":19144,"start":18185,"seq_region_name":"DPSCF300420","object_type":"Gene","db_type":"core","assembly_name":"v3","logic_name":"OGS2","source":"Reppert Lab","species":"Danaus_plexippus_v3"}
```
