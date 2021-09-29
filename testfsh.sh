#!/usr/bin/env bash
echo "examples found:" ; \
cd fsh-generated/resources ; \
for FILE in Bundle-DDCC-TX-SHE-bundle-example* ; \
do echo ${FILE} ; done ; \
cd ../..

cd fsh-generated/resources ; for FILE in Bundle-DDCC-TX-SHE-bundle-example* ; \
do curl -X POST -H "Content-Type: application/fhir+json" \
--data @${FILE} localhost:4321/ddcc/submitHealthEvent | jq . ; done ; cd ../..
