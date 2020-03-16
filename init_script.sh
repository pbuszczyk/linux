#/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
curl https://raw.githubusercontent.com/pbuszczyk/docker/master/dockerfile -o dockerfile
docker build -t hello-world .
docker run -t -i -p 80:80 hello-world
test test test
