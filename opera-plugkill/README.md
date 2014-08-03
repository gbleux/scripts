# opera-plugkill

This script will terminate all opera plugin processes, regardless of their
state. It has been tested with Opera 12 and is supposed to reactivate
the browser whenever one of its plugins hangs.

## Installation

Running either `make install` or `make install_home` will be sufficient
most of the time. If you want to install the files manually, copy
_opera-plugkill_ into a directory which is part of the PATH lookup chain.

## Usage

Run _opera-plugkill_ whenever opera hangs due to a crashed plugin.