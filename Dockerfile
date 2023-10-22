# Runs Ubuntu 22.04 LTS (Jammy Jellyfish) as base image
FROM ubuntu:22.04
# Sets the maintainer to me, Minionguyjpro!
LABEL org.opencontainers.image.authors="Minionguyjpro,Alphe"
# Install all needed programs, including: GCC i386 libraries, Xorriso and GNU Mtools
RUN apt-get update
RUN apt-get install gcc-multilib -y
RUN apt-get install grub-pc -y
RUN apt-get install xorriso -y
RUN apt-get install mtools -y
# Sets the entrypoint to Bash; the default terminal for most Linux distributions
ENTRYPOINT ["/bin/bash"]