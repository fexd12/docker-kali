# docker-kali

build image:
 - git clone https://github.com/fexd12/docker-kali.git 
 - cd docker-kali
 - docker build -t docker-kali .

run image with volume:
  docker run -it -v your_volume:/root/data docker-kali
