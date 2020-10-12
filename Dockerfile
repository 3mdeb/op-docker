FROM debian:buster

MAINTAINER Piotr Król <piotr.krol@3mdeb.com>

RUN \
	useradd -p locked -m user && \
	apt-get -qq update && \
	apt-get -qqy install \
		bc \
		bin86 \
		bison \
		build-essential \
		ccache \
		cpio \
		cscope \
		ctags \
		flex \
		gawk \
		gcc \
		gettext \
		git \
		gnat \
		g++ \
		libssl-dev \
		libxml-simple-perl \
		libxml-sax-perl \
		libxml2-dev \
		libxml2-utils \
		libz-dev \
		libexpat-dev \
		locales \
		locales-all \
		make \
		patch \
		python \
		python-dev \
		python3-dev \
		python-twisted \
		rsync \
		texinfo \
		unzip \
		wget \
		xsltproc \
		xxd \
		xz-utils \
	&& apt-get clean

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV PATH="/usr/lib/ccache:${PATH}"

RUN mkdir /home/user/.ccache && \
	chown user:user /home/user/.ccache

USER user
