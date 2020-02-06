#!/bin/bash

spark-shell -i  ./anomaly.spark --conf spark.jars=deequ-1.0.2.jar 