# Re-generating Ignition file command: 

`
butane --pretty --strict _homelab.bu > ./ignition/_homelab.ign
`


# Generating password hash

`
podman run -ti --rm quay.io/coreos/mkpasswd --method=yescrypt
`


# install command (local sandbox)

sudo coreos-installer install /dev/vda --ignition-url http://192.168.64.1:8000/ignition/_homelab.ign --insecure-ignition



# install command (remotely hosted)

sudo coreos-installer install /dev/vda --ignition-url https://raw.githubusercontent.com/egriffith/coreos-sandbox/refs/heads/main/ignition/_homelab_syn.ign


