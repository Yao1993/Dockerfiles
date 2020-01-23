#/bin/bash

PASSWORD=$(cat ./password.txt)
echo ${PASSWORD}

cd UbuntuWithSSH
sudo docker build --no-cache -t yao11/cuda-devel:ubuntu-with-ssh --build-arg ROOT_PASSWORD=${PASSWORD} .

cd ../Zhou
sudo docker build --no-cache -t yao11/cuda-devel:zhou .

