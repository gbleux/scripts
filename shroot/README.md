# shroot

A shell based chroot. This is **not** a security tool, but rather a
convenient way of temporarily relocating to a different directory.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy _shroot_ 
into a directory which is part of the PATH lookup chain.

## Usage

_shoot_ can be configured to run a custom shell inside a different home
directory. If none are defined, the current shell will be used to relocate
to the current working directory. Arguments for the shell can be specified
by terminating the command-line parser with _--_. Everything after this
delimiter is provided to the shell executable. The available commandline
arguments are:

* -s, --shell  
  Use the provided shell executable (default: **/bin/sh**)
* -h, --home  
  Set the HOME environment variable (default: **$PWD**)

### Examples
 
Using the current shell as a login shell:

> shroot -- -l

Using the current shell with a different home directory:

> shroot -h /tmp
 
Run an interactive c-shell with **/run** as the home directory:

> shroot --shell /bin/csh -h /run -- -i