# A Docker container for running pass

This repository contains files to build a Docker container preloaded
with [Pass](https://www.passwordstore.org).  This program is available
in the repositories of most Linux distributions but has been dropped
from EL10, which is why the container exists.

# Running the Container

To run the container, execute the `run` script in this directory and
provide the directory where the vault lives as an argument, e.g.,:

```
./run ~/work/my-vault
```

A mirror of your user account on the host will be created in the
container and your home directory shared as a volume.

Exiting the shell started by `run` will remove the container.
