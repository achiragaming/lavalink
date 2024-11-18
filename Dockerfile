FROM fredboat/lavalink:4.0.8

# Create plugins directory with correct permissions
USER root
RUN mkdir -p /opt/Lavalink/plugins && chown -R lavalink:lavalink /opt/Lavalink/plugins

# Switch back to lavalink user
USER lavalink

# Copy config
COPY application.yml /opt/Lavalink/application.yml
