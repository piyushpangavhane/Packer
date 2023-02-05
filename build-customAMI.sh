#!/bin/bash
sudo su
cd 
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install libtomcat-java -y
sudo apt-get update -y
sudo apt-get install tomcat9-admin tomcat9-common -y
sudo apt-get install tomcat9 -y
cd /var/lib/tomcat9/webapps/
sudo wget https://pangavhane-artifacts.s3.ap-south-1.amazonaws.com/jb-hello-world-maven-0.2.0.jar
sudo systemctl start tomcat9
