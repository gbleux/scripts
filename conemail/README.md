# conemail

This script is merely a bit more than a shell command alias. Apart from
defining various cone related configuration variables it also invokes
the real _cone_ binary with instructions to read its configuration from
a a XDG-compliant location.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy _conemail_ into a directory which is part of the PATH lookup chain.

## Usage

Run _conemail_ instead of _cone_ to receive its benefits. As it is just
a shallow wrapper script it does not enhance/extend the functionality
or alters the behaviour of _cone_.

## Files

_cone_ is instructed to read the configuration files from
**$XDG_CONFIG_HOME/cone**. If _$XDG_CONFIG_HOME_ is not defined, it
defaults to _$HOME/.config_ as suggested by the XDG specification.

The SSL cache file is defined as _$HOME/.cache/ssl_.