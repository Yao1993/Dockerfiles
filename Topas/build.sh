#/bin/bash

PASSWORD=$(cat ./password.txt)
echo ${PASSWORD}

# sudo docker build --no-cache -t yao11/topas:ubuntu --build-arg ROOT_PASSWORD=${PASSWORD} .
sudo docker build -t yao11/topas:ubuntu --build-arg ROOT_PASSWORD=${PASSWORD} .


