#
# Kibana behind Doorman Dockerfile
#
# Original: https://github.com/dockerfile/elasticsearch
#

# Pull base image.
FROM dockerfile/nodejs

# Install Doorman
RUN \
  cd / && \
  git clone https://github.com/movableink/doorman && \
  cd doorman && \
  npm install

# Install Kibana 4
RUN \
  cd / && \
  wget https://download.elasticsearch.org/kibana/kibana/kibana-4.0.2-linux-x64.tar.gz && \
  tar -zxvf kibana-4.0.2-linux-x64.tar.gz && \
  rm -rf kibana-4.0.2-linux-x64.tar.gz && \
  cd kibana-4.0.2-linux-x64

# Add Doorman template configuration file
ADD config/doorman.js /doorman/conf.js
# Add Kibana template configuration file
ADD config/kibana.yml /tmp/kibana.yml
# Add run script
ADD run.sh /run.sh

EXPOSE 8085

# Define default command.
CMD ["/run.sh"]
