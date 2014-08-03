# live-wallpaper

_live-wallpaper_ serves two purposes: Limit the number of runnining
_conky_ instances to one and load the configuration from an XDG-compliant
location.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy
_live-wallpaper_ into a directory which is part of the PATH lookup chain.

## Usage

Run _live-wallpaper_ either manually of part of some autostart system.
If a _conky_ instance is already running, this script terminates without
action, otherwise it launches _conky_ (it expects the executable to be
located in a location which is part of **PATH**)

## Files

_conky_ is instructed to read the configuration from
**$XDG_CONFIG_HOME/conky/rc**. If _$XDG_CONFIG_HOME_ is not defined,
it defaults to _$HOME/.config_ as suggested by the XDG specification.