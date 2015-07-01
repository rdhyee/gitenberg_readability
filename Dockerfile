FROM rdhyee/scipyserver-ansible

MAINTAINER Raymond Yee  <raymond.yee@gmail.com>

RUN \
  pip2 install https://github.com/andreasvc/readability/tarball/master  && \
  pip2 install Gutenberg && \
  pip2 install certifi && \
  pip2 install --upgrade requests[security]  # http://stackoverflow.com/a/29099439/7782
  
RUN \
  pip2 install -U textblob
  
RUN \
  python2 -m textblob.download_corpora

VOLUME ["/notebooks", "/data"]

EXPOSE 8888

CMD /notebook.sh
