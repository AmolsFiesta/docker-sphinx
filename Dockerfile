FROM ubuntu:10.04

RUN apt-get --no-install-recommends update
RUN apt-get --no-install-recommends -y upgrade
RUN apt-get --no-install-recommends -y install libexpat1 libmysqlclient16 libpq5 wget

ADD ./sphinx_2.0.8.deb /root/sphinx.deb
RUN dpkg -i /root/sphinx.deb

RUN mkdir -p /sphinx/conf
RUN mkdir -p /sphinx/log
RUN mkdir -p /sphinx/data

ADD ./sphinx.conf /sphinx/conf/sphinx.conf
ENV SPHINX_CONF_FILE=/sphinx/conf/sphinx.conf

ADD ./search.sh /search.sh
RUN chmod +x /search.sh

EXPOSE 9312

CMD ["/search.sh"]
