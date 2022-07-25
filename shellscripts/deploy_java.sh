#!/bin/bash
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://samplebucketsathya/java/hello-1.0.war .
scp hello-1.0.war ubuntu@10.0.123.147:/home/ubuntu/tomcat/apache-tomcat-9.0.65/webapps
ssh ubuntu@10.0.123.147 << HERE
    cd /home/ubuntu/tomcat/apache-tomcat-9.0.65/bin/
    ./shutdown.sh
    ./startup.sh
HERE


