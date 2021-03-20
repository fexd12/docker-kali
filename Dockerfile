FROM kalilinux/kali-rolling:latest

#run docker run -it -v path/your/volume:/root/data your build instance 
LABEL author="Felipe Amorim"
LABEL vendor="fexd"

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /root

SHELL ["/bin/bash", "-c"]

RUN apt-get -y update && \
    apt-get -y upgrade && \ 
    apt-get autoremove && apt-get autoclean && \
    apt-get install -yqq kali-linux-headless 0trace hping3 \
        masscan dnsenum dnsmap nbtscan dnsrecon theharvester  \
        ncat dnswalk enum4linux fierce onesixtyone recon-ng smbmap \
        smtp-user-enum nikto openvas dirb dotdotpwn proxychains \
        wpscan rarcrack crunch mimikatz hash-identifier hashcat \
        hashcat-utils passing-the-hash hashid wordlists set snmpcheck \
        exploitdb dnschef tshark powersploit binwalk yara dnstracer \
        tcpdump windows-privesc-check 0trace p0f gobuster iputils-ping \
        tmux vim openvpn man tftp ftp bash-completion perl-tk \
        libterm-readkey-perl wfuzz sshfs exiftool steghide pngcheck \
        fping fpdns curl wget ansible gron python3-pip dirbuster jq \
        bloodhound firefox-esr metasploit-framework

CMD [ "/bin/bash" ]
