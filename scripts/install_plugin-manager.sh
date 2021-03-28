#!/bin/bash

CMD_RUNNER_URL="http://search.maven.org/remotecontent?filepath=kg/apc/cmdrunner/2.2/cmdrunner-2.2.jar"
PLUGIN_MANAGER_URL="https://jmeter-plugins.org/get/"
# CUSTOM_THREAD_GROUP="https://jmeter-plugins.org/files/packages/jpgc-casutg-2.9.zip"

# DOWNLOAD RUNNER
wget -O "lib/cmdrunner-2.2.jar" $CMD_RUNNER_URL

# DOWNLOAD MANAGER
wget -O "lib/ext/jmeter-plugins-manager.jar" $PLUGIN_MANAGER_URL

# DOWNLOAD CUSTOM_THREAD_GROUP
# wget -O  "lib/ext/jpgc-casutg.jar" $CUSTOM_THREAD_GROUP 

# GENERATING SCRIPTS
java -cp lib/ext/jmeter-plugins-manager.jar org.jmeterplugins.repository.PluginManagerCMDInstaller

./bin/PluginsManagerCMD.sh install jpgc-casutg=2.9