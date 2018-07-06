#!/bin/sh

TARGETS=8.5-jre8-j2v8_2.6-alpine

for target in $TARGETS
do
    docker build -t isken/tomcat:$target ./$target
    docker push isken/tomcat:$target
done
