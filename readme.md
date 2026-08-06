# Re-generating Ignition file command: 

`
butane --pretty --strict example.bu > example.ign
`


# Generating password hash

`
podman run -ti --rm quay.io/coreos/mkpasswd --method=yescrypt
`