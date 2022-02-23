FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y build-essential libtool automake pkg-config git wget gettext-base tar

RUN mkdir /ruby_src

COPY rb_src/ruby-2.3.7.tar.gz /ruby_src/ruby-2.3.7.tar.gz

RUN tar xzvf /ruby_src/ruby-2.3.7.tar.gz --directory /ruby_src

WORKDIR /ruby_src/ruby-2.3.7

RUN ./configure

RUN make

RUN make install

RUN mkdir /src

WORKDIR /src

CMD ruby --version