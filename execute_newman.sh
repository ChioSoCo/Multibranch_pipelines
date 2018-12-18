#! /bin/bash
cd /Multibranch_pipelines 
git pull https://github.com/ChioSoCo/Multibranch_pipelines.git 
newman run mycollection.json --reporters cli,json --reporter-json-export outputfile.json
