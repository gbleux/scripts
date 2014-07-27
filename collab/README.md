# collab

_collab_ is utility which makes use of bindfs to mount directories
in order to grant access to otherwise private files.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy _collab_
into a directory which is part of the PATH lookup chain.

## Usage

Execute `collab help` to get a list of supported commands.
`collab help COMMAND` will explain the purpose of each command.

## Environment

If the collaboration directory or its mount point are not provided
via the commandline, _collab_ queries the environment for possible
values.

If **COLLAB_TARGET** is defined and not empty, it is used as the mount
target, i.e the directory to open for collaboration. If neither defined
via commandline nor via environment, the current working directory is
used.

**COLLAB_SHARE** defines the mount point others can access in order to
contribute. The default value is _/tmp/collab/$USER_ is no value is
provided.

The group whose members are allowed to contribute can be defined
via the environment variable **COLLAB_GROUP**. If absent or empty
access will be granted to all members of the _users_ group.