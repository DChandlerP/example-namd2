FROM centos:8

# Tools a researcher might want?
RUN yum install -y \
    wget \
    vim \
    git \
    csh \
    perl\
    redhat-lsb \
    lsof \
    && rm -rf /var/cache/yum*

# https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=NAMD has a list of NAMD versions available
# One must register and log to get the actual binaries. I chose to unzip mine in the dir with the dockerfile.
COPY NAMD_Git-2020-12-17_Linux-x86_64-multicore /opt/namd
ENV PATH=/opt/namd:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


