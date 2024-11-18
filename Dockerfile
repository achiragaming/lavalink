FROM fredboat/lavalink:4.0.8

# Copy plugins directory
COPY ./plugins/ /opt/Lavalink/plugins/

# Copy config
COPY ./application.yml /opt/Lavalink/application.yml
