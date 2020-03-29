#/bin/bash

PASSWORD=$(cat ./password.txt)
echo ${PASSWORD}

cd UbuntuWithSSH
sudo docker build --no-cache -t yao11/cuda-devel:ubuntu-with-ssh --build-arg ROOT_PASSWORD=${PASSWORD} .

cd ../DevelTools
sudo docker build --no-cache -t yao11/cuda-devel:devel-tools .

cd ../MiniConda
sudo docker build --no-cache -t yao11/cuda-devel:mini-conda .

cd ../Anaconda 
sudo docker build --no-cache -t yao11/cuda-devel:anaconda .
