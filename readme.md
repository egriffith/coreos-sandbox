# Re-generating Ignition file command: 

`
butane --pretty --strict _homelab.bu > ./ignition/_homelab.ign
`


# Generating password hash

`
podman run -ti --rm quay.io/coreos/mkpasswd --method=yescrypt
`


# install command

sudo coreos-installer install /dev/vda --ignition-url http://192.168.64.1:8000/ignition/_homelab.ign --insecure-ignition