Build:

`sudo docker build -t teuthology_leap .`

Use:
We can pass openrc.sh args as env-file after some modifications:
https://docs.docker.com/edge/engine/reference/commandline/run/#set-environment-variables--e---env---env-file

`sed 's/export //g' ../ovh-openrc.sh | tee ovh.list` # also remove `unset` vars

To use your hosts ssh-key you can run it like:

`docker run -v ~/.ssh:/root/.ssh:ro --env-file ../ovh.list  --rm -it teuthology_leap`

This will place you in the running container;
Inside the container run:

# eval $(ssh-agent -s)
# ssh-add /root/.ssh/id_rsa

Execute your teuthology-openstack commands (if required modify the ssh key filenames)
