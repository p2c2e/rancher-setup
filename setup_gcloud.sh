#
# Launch like below:
# LIMA_HOME="$HOME/Library/Application Support/rancher-desktop/lima" "/usr/local/bin/limactl" shell 0 ./<thisscriptname>
# 
export PYTHONUNBUFFERED=1
export CLOUDSDK_CORE_DISABLE_PROMPTS=1
sudo apk add --update --no-cache curl
sudo apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
python3 -m ensurepip
export PATH=$PATH:$HOME/.local/bin:$HOME/google-cloud-sdk/bin
pip3 install --no-cache --upgrade pip setuptools
# Remove any old installation of Google SDK 
rm -rf ~/google-cloud-sdk/
curl https://sdk.cloud.google.com | /bin/bash
echo "export PATH=$PATH:$HOME/.local/bin:$HOME/google-cloud-sdk/bin" >> ~/.bashrc
echo "###############################################################################################"
echo "# First setup gcloud locally and login like follows:                                          #"
echo "# gcloud auth login                                                                           #"
echo "# gcloud auth configure-docker                                                                #"
echo "#                                                                                             #"
echo "# Save the auth token for use with :                                                          #"
echo "# nerdctl login -u oauth2accesstoken -p "$(gcloud auth print-access-token)" https://gcr.io    #"
echo "# then...                                                                                     #"
echo "# further calls to nerdctl like below would work                                              #"
echo "# nerdctl push $IMAGE_NAME:$IMAGE_TAG                                                         #"
echo "###############################################################################################"
