# Setup Rancher-Desktop to replace Docker-Desktop

One of the challenges with using nerdctl instead of docker command would be the way 'secured' registries work - and ability to push to public / authenticated repositories. Was created for MacOS use

1. Setup Rancher-Desktop and ensure nerdctl tool is also installed
2. Make sure Rancher-Desktop is running ...
3. Run the following -
```
LIMA_HOME="$HOME/Library/Application Support/rancher-desktop/lima" "/usr/local/bin/limactl" shell 0 ./setup_gcloud.sh
```
