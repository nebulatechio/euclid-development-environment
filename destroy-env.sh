#!/bin/bash
chmod -R +w images

cd images ||  exit

rm -r global-l0/tessellation
rm -r currency-l0/tessellation
rm -r currency-l1/initial-validator/tessellation
rm -r currency-l1/validators/tessellation
cd ../

cd composes/global-l0 || exit
docker-compose  down --remove-orphans
cd ../../

cd composes/currency-l0 || exit
docker-compose  down --remove-orphans
cd ../../

cd composes/currency-l1 || exit
docker-compose  down --remove-orphans
cd ../../

cd composes/monitoring || exit
docker-compose  down --remove-orphans
cd ../../