# docker-bamboo-agent

1. Enable Remote Agent under Bamboo Administration
2. Note down the bamboo version (from the footer)
3. Run the following, replace the variable values with the actual ones.

    docker run --name agent -e BAMBOO_VERSION=<bamboo_version> -e BAMBOO_SERVER=http://your.server.com/bamboo --restart=unless-stopped -d -it coolersport/bamboo-agent
