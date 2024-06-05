#!/bin/bash

SONARUSER=$1
SONARPWD=$2
SONARPROJ=$3
CURLARGS="-u $SONARUSER:$SONARPWD"
RVMHTTP="https://sonarqube.monotype.com/api/measures/component?component=$SONARPROJ&metricKeys=coverage"
curl $CURLARGS $RVMHTTP > sonardata
val=$(cat sonardata | jq '.component.measures[0].value' | tr -d '"')
echo $val
