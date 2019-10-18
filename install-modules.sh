rm -rf /tmp/nxOMSPlugin_3.22.zip
wget https://github.com/abenbachir/dsc-plugins/releases/download/v3.22/nxOMSPlugin_3.22.zip -O /tmp/nxOMSPlugin_3.22.zip

chown omsagent.root /tmp/nxOMSPlugin_3.22.zip
su - omsagent -c "/opt/microsoft/omsconfig/Scripts/InstallModule.py /tmp/nxOMSPlugin_3.22.zip 0"

echo "nxOMSPlugin version:i cat /opt/microsoft/omsconfig/modules/nxOMSPlugin/VERSION"
cat /opt/microsoft/omsconfig/modules/nxOMSPlugin/VERSION

echo "ls -la /opt/microsoft/omsconfig/modules/nxOMSPlugin/DSCResources/MSFT_nxOMSPluginResource/Plugins/Common/plugin/"
ls -la /opt/microsoft/omsconfig/modules/nxOMSPlugin/DSCResources/MSFT_nxOMSPluginResource/Plugins/Common/plugin/
