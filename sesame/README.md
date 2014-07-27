# sesame

_sesame_ is utility which makes use of encfs to mount encrypted containers.
the decryption passphrase is retrieved via a password manager. multiple
containers can be managed either via environment variables or by providing
the container and mount paths on the commandline.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy _sesame_
into a directory which is part of the PATH lookup chain.

## Usage

Execute `sesame help` to get a list of supported commands.
`sesame help COMMAND` will explain the purpose of each command.

## Environment

If the location of the encrypted container or its mount point are not
provided via the commandline, _sesame_ queries the environment for possible
values.

**SESAME_VAULT** is read as the location of the encrypted container. If it
is empty or not defined, _sesame_ will exit.

**SESAME_GATE** should point to the mount location of the decrypted
container. It is created if not already existing. If not defined or
empty, it defaults to _$HOME/.cache/sesame_.

**SESAME_KEY** must be defined and contains the command (including
arguments) which will be invoked in order to retrieve the passphrase.
The passphrase is read from stdin and is piped to encfs.