## https://hub.docker.com/_/clojure https://github.com/Quantisan/docker-clojure

## TODO: Consider using https://hub.docker.com/r/theasp/clojurescript-nodejs

FROM clojure:latest

RUN apt-get update  ## optional? 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y apt-utils
RUN apt-get autoremove -y
RUN apt-get install -y nodejs
RUN node -v

WORKDIR /tmp

WORKDIR /home 

CMD ["/bin/bash"]