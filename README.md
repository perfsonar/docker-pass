# A Docker container for running pass

This repository contains files to build a Docker container which is
preloaded with [Pass](https://www.passwordstore.org).  This program is
available in the repositories of most Linux distributions but has been
dropped from EL10, which is why the container exists.

# Running the Container

To run the container, execute the `run` script in this directory.  You
may optionally provide a path to the vault you wish to operate on,
which will appear in the container in `/vault`.  In either case, your
user account on the host will be created in the container and your home
directory shared as a volume.

