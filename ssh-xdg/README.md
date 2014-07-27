# ssh-xdg

_ssh-xdg_ is a simple wrapper for the commands from the SSH tool suite
(ssh, scp, sftp).

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy _ssh-xdg_
into a directory which is part of the PATH lookup chain. Then either copy
or symlink it to contain the name of the other tools of the SSH suite.
It is best to use the following naming pattern: ssh_tool + _-xdg_
(e.g. sftp-xdg). The script will strip the _-xdg_ postfix and call the
original _sftp_ command with all the parameter provided to the script.

## Usage

The script can be used as a subsitute for the original commands as all
parameters on the commandline are passed on unaltered. Only an additional
parameter is included; the location of the XDG compliant configuration
location. The configuration is either located in
**$XDG_CONFIG_HOME**/ssh/config or **$XDG_CONFIG_HOME**/@TOOL@/config,
where _@TOOL@_ is the name of the command (scp, sftp, ...). If neither
of those files exist, the actual binary is invoked without any parameters
injected as if it was called directly.