# This image extends plussell/base-wildfly image
# with mail configuration
FROM plussell/base-wildfly

MAINTAINER plussell <devteam@plussell.org>

ENV WILDFLY_STANDALONE_CFG $JBOSS_HOME/standalone/configuration/standalone.xml

# Coping file
COPY files /opt/liferay/files

# configure mail server
RUN cd $HOME && \
