FROM fredboat/lavalink:4.0.8

# Create plugins directory with correct permissions
USER root
RUN mkdir -p /opt/Lavalink/plugins && chown -R lavalink:lavalink /opt/Lavalink/plugins

# Install jq using apt
RUN apt-get update && \
    apt-get install -y jq && \
    rm -rf /var/lib/apt/lists/*

# Switch back to lavalink user
USER lavalink

# Copy config
COPY application.yml /opt/Lavalink/application.yml
