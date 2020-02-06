#!/bin/bash

# spark-shell --conf spark.jars=deequ-1.0.2.jar -i  ./script.spark

if [ -z "$1" ]
  then
    echo "No argument supplied"
    SOURCE_BUCKET=s3://visbucket-42325/geoloans/loan_data_short.csv
   else
   	SOURCE_BUCKET=$1
fi

# echo $SOURCE_BUCKET

spark-shell -i  ./script.spark --conf spark.jars=deequ-1.0.2.jar --conf spark.driver.args=$SOURCE_BUCKET" s3://deequ-report-outputs/results/"