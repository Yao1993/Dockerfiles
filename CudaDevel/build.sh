#/bin/bash

PASSWORD=$(cat ./password.txt)
echo ${PASSWORD}

cd Core
sudo docker build --no-cache -t yao11/cuda-devel:core --build-arg ROOT_PASSWORD=${PASSWORD} .

cd ../NoAnaconda
sudo docker build --no-cache -t yao11/cuda-devel:no-anaconda .

cd ../Anaconda 
sudo docker build --no-cache -t yao11/cuda-devel:anaconda .
