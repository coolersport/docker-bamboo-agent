#!/bin/bash
if [ ! -f /home/alpine/atlassian-bamboo-agent-installer-$BAMBOO_VERSION.jar ]; then
    echo "Initialise the agent..."
    rm -rf /home/alpine/bamboo-agent-home/{bamboo-agent.cfg.xml,caches,classpath,logs,plugins}
    wget --no-check-certificate -O /home/alpine/atlassian-bamboo-agent-installer-$BAMBOO_VERSION.jar $BAMBOO_SERVER/admin/agent/bamboo-agent-$BAMBOO_VERSION.jar
    ln -s /home/alpine/atlassian-bamboo-agent-installer-$BAMBOO_VERSION.jar /home/alpine/atlassian-bamboo-agent-installer.jar
    java -jar /home/alpine/atlassian-bamboo-agent-installer.jar $BAMBOO_SERVER/agentServer/
fi
java -jar /home/alpine/atlassian-bamboo-agent-installer.jar $BAMBOO_SERVER/agentServer/
