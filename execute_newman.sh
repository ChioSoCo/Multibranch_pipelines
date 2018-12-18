#! /bin/bash
cd / 
git clone https://github.com/ChioSoCo/Multibranch_pipelines.git 
cd Multibranch_pipelines 
newman run mycollection.json --reporters cli,json --reporter-json-export outputfile.json
