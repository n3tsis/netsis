FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Netsis Developers <dev@netsis.org>"
LABEL description="Dockerised Netsis, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /netsis

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} netsis
RUN useradd -u ${USER_ID} -g netsis -s /bin/bash -m -d /netsis netsis
RUN mkdir /netsis/.netsis
RUN chown netsis:netsis -R /netsis

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER netsis

VOLUME ["/netsis"]

EXPOSE 14663 9999 24663 24664

WORKDIR /netsis
