#!/bin/bash
tag=$1
env=$2

IP=`grep $env env.properties | cut -d ':' -f2 |tr -d "[:space:]"`

mkdir /var/lib/jenkins/deploy
cd /var/lib/jenkins/deploy
aws s3 cp s3://samplebucketsathya/java/$tag/sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ubuntu@${IP}:/home/ubuntu/tomcat/apache-tomcat-9.0.65/webapps
ssh ubuntu@${IP} << HERE
    rm -rf /home/ubuntu/tomcat/apache-tomcat-9.0.65/work
    cd /home/ubuntu/tomcat/apache-tomcat-9.0.65/bin/
    ./shutdown.sh
    ./startup.sh
HERE