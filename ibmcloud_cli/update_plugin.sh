# ibmcloud_cli
if test ! $(which ibmcloud); then
    exit 1
fi

# list all plugins available
ibmcloud plugin repo-plugins -r 'IBM Cloud'

# update all
ibmcloud plugin update --all -r 'IBM Cloud'
