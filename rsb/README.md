# rsb

Poor mans rsync-based backup solution. Synchronizes the users home
directory to an external/remote/different location.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy _rsb_
into a directory which is part of the PATH lookup chain.

## Usage

_rsb_ can either be run manually or as part of a cron job to implement
automated backups. Its only required parameter is the backup location.
This can either be a local or remote path. See **rsync(1)** for possible
path notations.

## Files

If provided the second argument is the path of the file which contains
the password for the backup target location. This is only required
if the backup destination is password protected.