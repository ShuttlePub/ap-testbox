FROM docker.io/ubuntu:24.04

RUN apt update -q \
	&& apt install -yq \
	mkcert \
	&& apt clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD mkcert.sh /mkcert.sh

RUN mkcert --install

CMD [ "/mkcert.sh" ]
